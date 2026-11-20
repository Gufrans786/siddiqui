package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

final class zzkk implements Runnable {
    final AtomicReference zza;
    final String zzb;
    final String zzc;
    final zzlj zzd;

    zzkk(zzlj zzljVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        Objects.requireNonNull(zzljVar);
        this.zzd = zzljVar;
    }

    @Override
    public final void run() {
        this.zzd.zzu.zzt().zzq(this.zza, null, this.zzb, this.zzc);
    }
}
