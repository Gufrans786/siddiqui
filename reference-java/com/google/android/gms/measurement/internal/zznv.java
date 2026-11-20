package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zznv implements Runnable {
    final long zza;
    final zzoc zzb;

    zznv(zzoc zzocVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzocVar);
        this.zzb = zzocVar;
    }

    @Override
    public final void run() {
        this.zzb.zzl(this.zza);
    }
}
