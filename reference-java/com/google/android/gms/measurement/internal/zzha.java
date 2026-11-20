package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzha implements Runnable {
    final boolean zza;
    final zzhb zzb;

    zzha(zzhb zzhbVar, boolean z) {
        this.zza = z;
        Objects.requireNonNull(zzhbVar);
        this.zzb = zzhbVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc().zzas(this.zza);
    }
}
