package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzkd implements Runnable {
    final String zza;
    final String zzb;
    final Object zzc;
    final long zzd;
    final zzlj zze;

    zzkd(zzlj zzljVar, String str, String str2, Object obj, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = j;
        Objects.requireNonNull(zzljVar);
        this.zze = zzljVar;
    }

    @Override
    public final void run() {
        this.zze.zzN(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
