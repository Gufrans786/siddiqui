package com.google.firebase.analytics.connector;

import java.util.concurrent.Executor;

final class zzb implements Executor {
    static final zzb zza = new zzb();

    private zzb() {
    }

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
