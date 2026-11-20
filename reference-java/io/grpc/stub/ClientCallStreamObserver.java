package io.grpc.stub;

import javax.annotation.Nullable;

public abstract class ClientCallStreamObserver<ReqT> extends CallStreamObserver<ReqT> {
    public abstract void cancel(@Nullable String str, @Nullable Throwable th);

    @Override
    public abstract boolean isReady();

    @Override
    public abstract void request(int i);

    @Override
    public abstract void setMessageCompression(boolean z);

    @Override
    public abstract void setOnReadyHandler(Runnable runnable);

    public void disableAutoRequestWithInitial(int i) {
        throw new UnsupportedOperationException();
    }
}
