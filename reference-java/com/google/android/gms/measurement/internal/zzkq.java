package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

final class zzkq implements Runnable {
    final AtomicReference zza;
    final zzlj zzb;

    zzkq(zzlj zzljVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            try {
                zzlj zzljVar = this.zzb;
                atomicReference.set(Integer.valueOf(zzljVar.zzu.zzc().zzm(zzljVar.zzu.zzv().zzj(), zzfy.zzad)));
                this.zza.notify();
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
