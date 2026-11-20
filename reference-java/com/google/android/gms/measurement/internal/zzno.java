package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzno implements Runnable {
    final zzpg zza;
    final Runnable zzb;

    zzno(zznt zzntVar, zzpg zzpgVar, Runnable runnable) {
        this.zza = zzpgVar;
        this.zzb = runnable;
        Objects.requireNonNull(zzntVar);
    }

    @Override
    public final void run() {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzZ();
        zzpgVar.zzY(this.zzb);
        zzpgVar.zzM();
    }
}
