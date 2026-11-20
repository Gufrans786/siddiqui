package io.grpc.internal;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import io.grpc.CallOptions;
import io.grpc.ClientStreamTracer;
import io.grpc.InternalChannelz;
import io.grpc.InternalLogId;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import java.util.concurrent.Executor;

class FailingClientTransport implements ClientTransport {
    final Status error;
    private final ClientStreamListener.RpcProgress rpcProgress;

    FailingClientTransport(Status status, ClientStreamListener.RpcProgress rpcProgress) {
        Preconditions.checkArgument(!status.isOk(), "error must not be OK");
        this.error = status;
        this.rpcProgress = rpcProgress;
    }

    @Override
    public ClientStream newStream(MethodDescriptor<?, ?> methodDescriptor, Metadata metadata, CallOptions callOptions, ClientStreamTracer[] clientStreamTracerArr) {
        return new FailingClientStream(this.error, this.rpcProgress, clientStreamTracerArr);
    }

    @Override
    public void ping(final ClientTransport.PingCallback pingCallback, Executor executor) {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                pingCallback.onFailure(FailingClientTransport.this.error.asException());
            }
        });
    }

    @Override
    public ListenableFuture<InternalChannelz.SocketStats> getStats() {
        SettableFuture settableFutureCreate = SettableFuture.create();
        settableFutureCreate.set(null);
        return settableFutureCreate;
    }

    @Override
    public InternalLogId getLogId() {
        throw new UnsupportedOperationException("Not a real transport");
    }
}
