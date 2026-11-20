package io.grpc.internal;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import io.grpc.Attributes;
import io.grpc.CallOptions;
import io.grpc.ClientCall;
import io.grpc.ClientStreamTracer;
import io.grpc.ConnectivityState;
import io.grpc.ConnectivityStateInfo;
import io.grpc.Context;
import io.grpc.EquivalentAddressGroup;
import io.grpc.InternalChannelz;
import io.grpc.InternalInstrumented;
import io.grpc.InternalLogId;
import io.grpc.LoadBalancer;
import io.grpc.ManagedChannel;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.SynchronizationContext;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

final class OobChannel extends ManagedChannel implements InternalInstrumented<InternalChannelz.ChannelStats> {
    private static final Logger log = Logger.getLogger(OobChannel.class.getName());
    private final String authority;
    private final CallTracer channelCallsTracer;
    private final ChannelTracer channelTracer;
    private final InternalChannelz channelz;
    private final ScheduledExecutorService deadlineCancellationExecutor;
    private final DelayedClientTransport delayedTransport;
    private final Executor executor;
    private final ObjectPool<? extends Executor> executorPool;
    private final InternalLogId logId;
    private volatile boolean shutdown;
    private InternalSubchannel subchannel;
    private AbstractSubchannel subchannelImpl;
    private LoadBalancer.SubchannelPicker subchannelPicker;
    private final TimeProvider timeProvider;
    private final CountDownLatch terminatedLatch = new CountDownLatch(1);
    private final ClientCallImpl.ClientStreamProvider transportProvider = new ClientCallImpl.ClientStreamProvider() {
        @Override
        public ClientStream newStream(MethodDescriptor<?, ?> methodDescriptor, CallOptions callOptions, Metadata metadata, Context context) {
            ClientStreamTracer[] clientStreamTracers = GrpcUtil.getClientStreamTracers(callOptions, metadata, 0, false);
            Context contextAttach = context.attach();
            try {
                return OobChannel.this.delayedTransport.newStream(methodDescriptor, metadata, callOptions, clientStreamTracers);
            } finally {
                context.detach(contextAttach);
            }
        }
    };

    OobChannel(String str, ObjectPool<? extends Executor> objectPool, ScheduledExecutorService scheduledExecutorService, SynchronizationContext synchronizationContext, CallTracer callTracer, ChannelTracer channelTracer, InternalChannelz internalChannelz, TimeProvider timeProvider) {
        this.authority = (String) Preconditions.checkNotNull(str, "authority");
        this.logId = InternalLogId.allocate(getClass(), str);
        this.executorPool = (ObjectPool) Preconditions.checkNotNull(objectPool, "executorPool");
        Executor executor = (Executor) Preconditions.checkNotNull(objectPool.getObject(), "executor");
        this.executor = executor;
        this.deadlineCancellationExecutor = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService, "deadlineCancellationExecutor");
        DelayedClientTransport delayedClientTransport = new DelayedClientTransport(executor, synchronizationContext);
        this.delayedTransport = delayedClientTransport;
        this.channelz = (InternalChannelz) Preconditions.checkNotNull(internalChannelz);
        delayedClientTransport.start(new ManagedClientTransport.Listener() {
            @Override
            public Attributes filterTransport(Attributes attributes) {
                return attributes;
            }

            @Override
            public void transportInUse(boolean z) {
            }

            @Override
            public void transportReady() {
            }

            @Override
            public void transportShutdown(Status status) {
            }

            @Override
            public void transportTerminated() {
                OobChannel.this.subchannelImpl.shutdown();
            }
        });
        this.channelCallsTracer = callTracer;
        this.channelTracer = (ChannelTracer) Preconditions.checkNotNull(channelTracer, "channelTracer");
        this.timeProvider = (TimeProvider) Preconditions.checkNotNull(timeProvider, "timeProvider");
    }

    void setSubchannel(final InternalSubchannel internalSubchannel) {
        log.log(Level.FINE, "[{0}] Created with [{1}]", new Object[]{this, internalSubchannel});
        this.subchannel = internalSubchannel;
        this.subchannelImpl = new AbstractSubchannel() {
            @Override
            public void shutdown() {
                internalSubchannel.shutdown(Status.UNAVAILABLE.withDescription("OobChannel is shutdown"));
            }

            @Override
            InternalInstrumented<InternalChannelz.ChannelStats> getInstrumentedInternalSubchannel() {
                return internalSubchannel;
            }

            @Override
            public void requestConnection() {
                internalSubchannel.obtainActiveTransport();
            }

            @Override
            public List<EquivalentAddressGroup> getAllAddresses() {
                return internalSubchannel.getAddressGroups();
            }

            @Override
            public Attributes getAttributes() {
                return Attributes.EMPTY;
            }

            @Override
            public Object getInternalSubchannel() {
                return internalSubchannel;
            }
        };
        LoadBalancer.SubchannelPicker subchannelPicker = new LoadBalancer.SubchannelPicker() {
            final LoadBalancer.PickResult result;

            {
                this.result = LoadBalancer.PickResult.withSubchannel(OobChannel.this.subchannelImpl);
            }

            @Override
            public LoadBalancer.PickResult pickSubchannel(LoadBalancer.PickSubchannelArgs pickSubchannelArgs) {
                return this.result;
            }

            public String toString() {
                return MoreObjects.toStringHelper((Class<?>) C1OobSubchannelPicker.class).add("result", this.result).toString();
            }
        };
        this.subchannelPicker = subchannelPicker;
        this.delayedTransport.reprocess(subchannelPicker);
    }

    void updateAddresses(List<EquivalentAddressGroup> list) {
        this.subchannel.updateAddresses(list);
    }

    @Override
    public <RequestT, ResponseT> ClientCall<RequestT, ResponseT> newCall(MethodDescriptor<RequestT, ResponseT> methodDescriptor, CallOptions callOptions) {
        return new ClientCallImpl(methodDescriptor, callOptions.getExecutor() == null ? this.executor : callOptions.getExecutor(), callOptions, this.transportProvider, this.deadlineCancellationExecutor, this.channelCallsTracer, null);
    }

    @Override
    public String authority() {
        return this.authority;
    }

    @Override
    public boolean isTerminated() {
        return this.terminatedLatch.getCount() == 0;
    }

    @Override
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.terminatedLatch.await(j, timeUnit);
    }

    @Override
    public ConnectivityState getState(boolean z) {
        InternalSubchannel internalSubchannel = this.subchannel;
        if (internalSubchannel == null) {
            return ConnectivityState.IDLE;
        }
        return internalSubchannel.getState();
    }

    @Override
    public ManagedChannel shutdown() {
        this.shutdown = true;
        this.delayedTransport.shutdown(Status.UNAVAILABLE.withDescription("OobChannel.shutdown() called"));
        return this;
    }

    @Override
    public boolean isShutdown() {
        return this.shutdown;
    }

    @Override
    public ManagedChannel shutdownNow() {
        this.shutdown = true;
        this.delayedTransport.shutdownNow(Status.UNAVAILABLE.withDescription("OobChannel.shutdownNow() called"));
        return this;
    }

    void handleSubchannelStateChange(ConnectivityStateInfo connectivityStateInfo) {
        this.channelTracer.reportEvent(new InternalChannelz.ChannelTrace.Event.Builder().setDescription("Entering " + connectivityStateInfo.getState() + " state").setSeverity(InternalChannelz.ChannelTrace.Event.Severity.CT_INFO).setTimestampNanos(this.timeProvider.currentTimeNanos()).build());
        int i = AnonymousClass4.$SwitchMap$io$grpc$ConnectivityState[connectivityStateInfo.getState().ordinal()];
        if (i == 1 || i == 2) {
            this.delayedTransport.reprocess(this.subchannelPicker);
        } else {
            if (i != 3) {
                return;
            }
            this.delayedTransport.reprocess(new LoadBalancer.SubchannelPicker(connectivityStateInfo) {
                final LoadBalancer.PickResult errorResult;
                final ConnectivityStateInfo val$newState;

                {
                    this.val$newState = connectivityStateInfo;
                    this.errorResult = LoadBalancer.PickResult.withError(connectivityStateInfo.getStatus());
                }

                @Override
                public LoadBalancer.PickResult pickSubchannel(LoadBalancer.PickSubchannelArgs pickSubchannelArgs) {
                    return this.errorResult;
                }

                public String toString() {
                    return MoreObjects.toStringHelper((Class<?>) C1OobErrorPicker.class).add("errorResult", this.errorResult).toString();
                }
            });
        }
    }

    static class AnonymousClass4 {
        static final int[] $SwitchMap$io$grpc$ConnectivityState;

        static {
            int[] iArr = new int[ConnectivityState.values().length];
            $SwitchMap$io$grpc$ConnectivityState = iArr;
            try {
                iArr[ConnectivityState.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$grpc$ConnectivityState[ConnectivityState.IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$grpc$ConnectivityState[ConnectivityState.TRANSIENT_FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    void handleSubchannelTerminated() {
        this.channelz.removeSubchannel(this);
        this.executorPool.returnObject(this.executor);
        this.terminatedLatch.countDown();
    }

    LoadBalancer.Subchannel getSubchannel() {
        return this.subchannelImpl;
    }

    InternalSubchannel getInternalSubchannel() {
        return this.subchannel;
    }

    @Override
    public ListenableFuture<InternalChannelz.ChannelStats> getStats() {
        SettableFuture settableFutureCreate = SettableFuture.create();
        InternalChannelz.ChannelStats.Builder builder = new InternalChannelz.ChannelStats.Builder();
        this.channelCallsTracer.updateBuilder(builder);
        this.channelTracer.updateBuilder(builder);
        builder.setTarget(this.authority).setState(this.subchannel.getState()).setSubchannels(Collections.singletonList(this.subchannel));
        settableFutureCreate.set(builder.build());
        return settableFutureCreate;
    }

    @Override
    public InternalLogId getLogId() {
        return this.logId;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("logId", this.logId.getId()).add("authority", this.authority).toString();
    }

    @Override
    public void resetConnectBackoff() {
        this.subchannel.resetConnectBackoff();
    }
}
