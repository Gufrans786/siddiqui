package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzkv implements Runnable {
    final zzjl zza;
    final long zzb;
    final boolean zzc;
    final zzlj zzd;

    zzkv(zzlj zzljVar, zzjl zzjlVar, long j, boolean z) {
        this.zza = zzjlVar;
        this.zzb = j;
        this.zzc = z;
        Objects.requireNonNull(zzljVar);
        this.zzd = zzljVar;
    }

    @Override
    public final void run() {
        zzlj zzljVar = this.zzd;
        zzjl zzjlVar = this.zza;
        zzljVar.zzA(zzjlVar);
        zzljVar.zzak(zzjlVar, this.zzb, false, this.zzc);
    }
}
