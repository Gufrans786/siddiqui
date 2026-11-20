package io.grpc.internal;

import com.google.common.base.MoreObjects;
import com.google.common.util.concurrent.ListenableFuture;
import io.grpc.Attributes;
import io.grpc.CallOptions;
import io.grpc.ClientStreamTracer;
import io.grpc.InternalChannelz;
import io.grpc.InternalLogId;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import java.util.concurrent.Executor;

abstract class ForwardingConnectionClientTransport implements ConnectionClientTransport {
    protected abstract ConnectionClientTransport delegate();

    ForwardingConnectionClientTransport() {
    }

    @Override
    public Runnable start(ManagedClientTransport.Listener listener) {
        return delegate().start(listener);
    }

    @Override
    public void shutdown(Status status) {
        delegate().shutdown(status);
    }

    @Override
    public void shutdownNow(Status status) {
        delegate().shutdownNow(status);
    }

    @Override
    public ClientStream newStream(MethodDescriptor<?, ?> methodDescriptor, Metadata metadata, CallOptions callOptions, ClientStreamTracer[] clientStreamTracerArr) {
        return delegate().newStream(methodDescriptor, metadata, callOptions, clientStreamTracerArr);
    }

    @Override
    public void ping(ClientTransport.PingCallback pingCallback, Executor executor) {
        delegate().ping(pingCallback, executor);
    }

    @Override
    public InternalLogId getLogId() {
        return delegate().getLogId();
    }

    @Override
    public Attributes getAttributes() {
        return delegate().getAttributes();
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("delegate", delegate()).toString();
    }

    @Override
    public ListenableFuture<InternalChannelz.SocketStats> getStats() {
        return delegate().getStats();
    }
}
