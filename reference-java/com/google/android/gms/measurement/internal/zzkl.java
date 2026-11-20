package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

final class zzkl implements Runnable {
    final AtomicReference zza;
    final String zzb;
    final String zzc;
    final boolean zzd;
    final zzlj zze;

    zzkl(zzlj zzljVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = z;
        Objects.requireNonNull(zzljVar);
        this.zze = zzljVar;
    }

    @Override
    public final void run() {
        this.zze.zzu.zzt().zzt(this.zza, null, this.zzb, this.zzc, this.zzd);
    }
}
