package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zza implements Runnable {
    final String zza;
    final long zzb;
    final zzd zzc;

    zza(zzd zzdVar, String str, long j) {
        this.zza = str;
        this.zzb = j;
        Objects.requireNonNull(zzdVar);
        this.zzc = zzdVar;
    }

    @Override
    public final void run() {
        this.zzc.zzd(this.zza, this.zzb);
    }
}
