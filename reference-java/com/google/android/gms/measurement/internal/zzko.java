package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

final class zzko implements Runnable {
    final AtomicReference zza;
    final zzlj zzb;

    zzko(zzlj zzljVar, AtomicReference atomicReference) {
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
                atomicReference.set(zzljVar.zzu.zzc().zzk(zzljVar.zzu.zzv().zzj(), zzfy.zzab));
                this.zza.notify();
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
