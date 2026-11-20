package io.grpc.okhttp;

public final class OkHttpServerTransport$$ExternalSyntheticLambda0 implements Runnable {
    public final OkHttpServerTransport f$0;

    public OkHttpServerTransport$$ExternalSyntheticLambda0(OkHttpServerTransport okHttpServerTransport) {
        this.f$0 = okHttpServerTransport;
    }

    @Override
    public final void run() {
        this.f$0.triggerForcefulClose();
    }
}
