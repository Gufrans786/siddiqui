package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzka implements Runnable {
    final long zza;
    final zzlj zzb;

    zzka(zzlj zzljVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override
    public final void run() {
        zzic zzicVar = this.zzb.zzu;
        zzhe zzheVar = zzicVar.zzd().zzf;
        long j = this.zza;
        zzheVar.zzb(j);
        zzicVar.zzaV().zzj().zzb("Session timeout duration set", Long.valueOf(j));
    }
}
