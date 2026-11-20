package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

final class zzkp implements Runnable {
    final AtomicReference zza;
    final zzlj zzb;

    zzkp(zzlj zzljVar, AtomicReference atomicReference) {
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
                atomicReference.set(Long.valueOf(zzljVar.zzu.zzc().zzl(zzljVar.zzu.zzv().zzj(), zzfy.zzac)));
                this.zza.notify();
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
