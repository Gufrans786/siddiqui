package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zznu implements Runnable {
    final long zza;
    final zzoc zzb;

    zznu(zzoc zzocVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzocVar);
        this.zzb = zzocVar;
    }

    @Override
    public final void run() {
        this.zzb.zzk(this.zza);
    }
}
