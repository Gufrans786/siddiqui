package io.grpc.internal;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import io.grpc.Attributes;
import io.grpc.CallCredentials;
import io.grpc.CallOptions;
import io.grpc.ChannelCredentials;
import io.grpc.ChannelLogger;
import io.grpc.ClientStreamTracer;
import io.grpc.CompositeCallCredentials;
import io.grpc.InternalMayRequireSpecificExecutor;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.SecurityLevel;
import io.grpc.Status;
import java.net.SocketAddress;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

final class CallCredentialsApplyingTransportFactory implements ClientTransportFactory {
    private final Executor appExecutor;
    private final CallCredentials channelCallCredentials;
    private final ClientTransportFactory delegate;

    CallCredentialsApplyingTransportFactory(ClientTransportFactory clientTransportFactory, CallCredentials callCredentials, Executor executor) {
        this.delegate = (ClientTransportFactory) Preconditions.checkNotNull(clientTransportFactory, "delegate");
        this.channelCallCredentials = callCredentials;
        this.appExecutor = (Executor) Preconditions.checkNotNull(executor, "appExecutor");
    }

    @Override
    public ConnectionClientTransport newClientTransport(SocketAddress socketAddress, ClientTransportFactory.ClientTransportOptions clientTransportOptions, ChannelLogger channelLogger) {
        return new CallCredentialsApplyingTransport(this.delegate.newClientTransport(socketAddress, clientTransportOptions, channelLogger), clientTransportOptions.getAuthority());
    }

    @Override
    public ScheduledExecutorService getScheduledExecutorService() {
        return this.delegate.getScheduledExecutorService();
    }

    @Override
    public ClientTransportFactory.SwapChannelCredentialsResult swapChannelCredentials(ChannelCredentials channelCredentials) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void close() {
        this.delegate.close();
    }

    @Override
    public Collection<Class<? extends SocketAddress>> getSupportedSocketAddressTypes() {
        return this.delegate.getSupportedSocketAddressTypes();
    }

    private class CallCredentialsApplyingTransport extends ForwardingConnectionClientTransport {
        private final String authority;
        private final ConnectionClientTransport delegate;
        private Status savedShutdownNowStatus;
        private Status savedShutdownStatus;
        private volatile Status shutdownStatus;
        private final AtomicInteger pendingApplier = new AtomicInteger(-2147483647);
        private final MetadataApplierImpl.MetadataApplierListener applierListener = new MetadataApplierImpl.MetadataApplierListener() {
            @Override
            public void onComplete() {
                if (CallCredentialsApplyingTransport.this.pendingApplier.decrementAndGet() == 0) {
                    CallCredentialsApplyingTransport.this.maybeShutdown();
                }
            }
        };

        CallCredentialsApplyingTransport(ConnectionClientTransport connectionClientTransport, String str) {
            this.delegate = (ConnectionClientTransport) Preconditions.checkNotNull(connectionClientTransport, "delegate");
            this.authority = (String) Preconditions.checkNotNull(str, "authority");
        }

        @Override
        protected ConnectionClientTransport delegate() {
            return this.delegate;
        }

        @Override
        public ClientStream newStream(final MethodDescriptor<?, ?> methodDescriptor, Metadata metadata, final CallOptions callOptions, ClientStreamTracer[] clientStreamTracerArr) {
            Executor executor;
            CallCredentials credentials = callOptions.getCredentials();
            if (credentials == null) {
                credentials = CallCredentialsApplyingTransportFactory.this.channelCallCredentials;
            } else if (CallCredentialsApplyingTransportFactory.this.channelCallCredentials != null) {
                credentials = new CompositeCallCredentials(CallCredentialsApplyingTransportFactory.this.channelCallCredentials, credentials);
            }
            if (credentials != null) {
                MetadataApplierImpl metadataApplierImpl = new MetadataApplierImpl(this.delegate, methodDescriptor, metadata, callOptions, this.applierListener, clientStreamTracerArr);
                if (this.pendingApplier.incrementAndGet() > 0) {
                    this.applierListener.onComplete();
                    return new FailingClientStream(this.shutdownStatus, clientStreamTracerArr);
                }
                CallCredentials.RequestInfo requestInfo = new CallCredentials.RequestInfo() {
                    @Override
                    public MethodDescriptor<?, ?> getMethodDescriptor() {
                        return methodDescriptor;
                    }

                    @Override
                    public CallOptions getCallOptions() {
                        return callOptions;
                    }

                    @Override
                    public SecurityLevel getSecurityLevel() {
                        return (SecurityLevel) MoreObjects.firstNonNull((SecurityLevel) CallCredentialsApplyingTransport.this.delegate.getAttributes().get(GrpcAttributes.ATTR_SECURITY_LEVEL), SecurityLevel.NONE);
                    }

                    @Override
                    public String getAuthority() {
                        return (String) MoreObjects.firstNonNull(callOptions.getAuthority(), CallCredentialsApplyingTransport.this.authority);
                    }

                    @Override
                    public Attributes getTransportAttrs() {
                        return CallCredentialsApplyingTransport.this.delegate.getAttributes();
                    }
                };
                try {
                    if (!(credentials instanceof InternalMayRequireSpecificExecutor) || !((InternalMayRequireSpecificExecutor) credentials).isSpecificExecutorRequired() || callOptions.getExecutor() == null) {
                        executor = CallCredentialsApplyingTransportFactory.this.appExecutor;
                    } else {
                        executor = callOptions.getExecutor();
                    }
                    credentials.applyRequestMetadata(requestInfo, executor, metadataApplierImpl);
                } catch (Throwable th) {
                    metadataApplierImpl.fail(Status.UNAUTHENTICATED.withDescription("Credentials should use fail() instead of throwing exceptions").withCause(th));
                }
                return metadataApplierImpl.returnStream();
            }
            if (this.pendingApplier.get() >= 0) {
                return new FailingClientStream(this.shutdownStatus, clientStreamTracerArr);
            }
            return this.delegate.newStream(methodDescriptor, metadata, callOptions, clientStreamTracerArr);
        }

        @Override
        public void shutdown(Status status) {
            Preconditions.checkNotNull(status, "status");
            synchronized (this) {
                if (this.pendingApplier.get() < 0) {
                    this.shutdownStatus = status;
                    this.pendingApplier.addAndGet(Integer.MAX_VALUE);
                    if (this.pendingApplier.get() != 0) {
                        this.savedShutdownStatus = status;
                    } else {
                        super.shutdown(status);
                    }
                }
            }
        }

        @Override
        public void shutdownNow(Status status) {
            Preconditions.checkNotNull(status, "status");
            synchronized (this) {
                if (this.pendingApplier.get() < 0) {
                    this.shutdownStatus = status;
                    this.pendingApplier.addAndGet(Integer.MAX_VALUE);
                } else if (this.savedShutdownNowStatus != null) {
                    return;
                }
                if (this.pendingApplier.get() != 0) {
                    this.savedShutdownNowStatus = status;
                } else {
                    super.shutdownNow(status);
                }
            }
        }

        public void maybeShutdown() {
            synchronized (this) {
                if (this.pendingApplier.get() != 0) {
                    return;
                }
                Status status = this.savedShutdownStatus;
                Status status2 = this.savedShutdownNowStatus;
                this.savedShutdownStatus = null;
                this.savedShutdownNowStatus = null;
                if (status != null) {
                    super.shutdown(status);
                }
                if (status2 != null) {
                    super.shutdownNow(status2);
                }
            }
        }
    }
}
