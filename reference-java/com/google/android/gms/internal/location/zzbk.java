package com.google.android.gms.internal.location;

import java.util.concurrent.Executor;

public final class zzbk implements Executor {
    public static final zzbk zza = new zzbk();

    private zzbk() {
    }

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
