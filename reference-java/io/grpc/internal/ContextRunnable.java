package io.grpc.internal;

import io.grpc.Context;

abstract class ContextRunnable implements Runnable {
    private final Context context;

    public abstract void runInContext();

    protected ContextRunnable(Context context) {
        this.context = context;
    }

    @Override
    public final void run() {
        Context contextAttach = this.context.attach();
        try {
            runInContext();
        } finally {
            this.context.detach(contextAttach);
        }
    }
}
