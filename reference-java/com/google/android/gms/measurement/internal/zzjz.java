package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzjz implements Runnable {
    final zzlj zza;

    zzjz(zzlj zzljVar) {
        Objects.requireNonNull(zzljVar);
        this.zza = zzljVar;
    }

    @Override
    public final void run() {
        this.zza.zzb.zza();
    }
}
