package io.grpc.stub;

public abstract class ServerCallStreamObserver<RespT> extends CallStreamObserver<RespT> {
    public abstract boolean isCancelled();

    @Override
    public abstract boolean isReady();

    @Override
    public abstract void request(int i);

    public abstract void setCompression(String str);

    @Override
    public abstract void setMessageCompression(boolean z);

    public abstract void setOnCancelHandler(Runnable runnable);

    @Override
    public abstract void setOnReadyHandler(Runnable runnable);

    public void disableAutoRequest() {
        throw new UnsupportedOperationException();
    }

    public void setOnCloseHandler(Runnable runnable) {
        throw new UnsupportedOperationException();
    }
}
