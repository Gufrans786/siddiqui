package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzc implements Runnable {
    final long zza;
    final zzd zzb;

    zzc(zzd zzdVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzdVar);
        this.zzb = zzdVar;
    }

    @Override
    public final void run() {
        this.zzb.zzf(this.zza);
    }
}
