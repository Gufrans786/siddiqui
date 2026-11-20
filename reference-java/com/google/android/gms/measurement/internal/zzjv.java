package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Executor;

final class zzjv implements Executor {
    final zzlj zza;

    zzjv(zzlj zzljVar) {
        Objects.requireNonNull(zzljVar);
        this.zza = zzljVar;
    }

    @Override
    public final void execute(Runnable runnable) {
        this.zza.zzu.zzaW().zzj(runnable);
    }
}
