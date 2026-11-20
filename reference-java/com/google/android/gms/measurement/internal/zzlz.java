package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzlz implements Runnable {
    final zzlu zza;
    final long zzb;
    final zzmb zzc;

    zzlz(zzmb zzmbVar, zzlu zzluVar, long j) {
        this.zza = zzluVar;
        this.zzb = j;
        Objects.requireNonNull(zzmbVar);
        this.zzc = zzmbVar;
    }

    @Override
    public final void run() {
        zzmb zzmbVar = this.zzc;
        zzmbVar.zzv(this.zza, false, this.zzb);
        zzmbVar.zza = null;
        zzmbVar.zzu.zzt().zzG(null);
    }
}
