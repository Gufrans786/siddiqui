package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzlw implements Runnable {
    final zzlu zza;
    final zzlu zzb;
    final long zzc;
    final boolean zzd;
    final zzmb zze;

    zzlw(zzmb zzmbVar, zzlu zzluVar, zzlu zzluVar2, long j, boolean z) {
        this.zza = zzluVar;
        this.zzb = zzluVar2;
        this.zzc = j;
        this.zzd = z;
        Objects.requireNonNull(zzmbVar);
        this.zze = zzmbVar;
    }

    @Override
    public final void run() {
        this.zze.zzu(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
