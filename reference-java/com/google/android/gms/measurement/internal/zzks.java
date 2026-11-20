package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzks implements Runnable {
    final Boolean zza;
    final zzlj zzb;

    zzks(zzlj zzljVar, Boolean bool) {
        this.zza = bool;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override
    public final void run() {
        this.zzb.zzaj(this.zza, true);
    }
}
