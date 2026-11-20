package com.google.android.gms.internal.location;

import java.util.concurrent.Executor;

enum zzdw implements Executor {
    INSTANCE;

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
