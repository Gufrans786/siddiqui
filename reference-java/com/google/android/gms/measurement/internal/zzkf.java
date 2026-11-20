package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

final class zzkf implements Runnable {
    final AtomicReference zza;
    final boolean zzb;
    final zzlj zzc;

    zzkf(zzlj zzljVar, AtomicReference atomicReference, boolean z) {
        this.zza = atomicReference;
        this.zzb = z;
        Objects.requireNonNull(zzljVar);
        this.zzc = zzljVar;
    }

    @Override
    public final void run() {
        this.zzc.zzu.zzt().zzv(this.zza, this.zzb);
    }
}
