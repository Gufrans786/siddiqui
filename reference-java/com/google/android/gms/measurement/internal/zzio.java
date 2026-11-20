package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzio implements Runnable {
    final zzr zza;
    final zzjd zzb;

    zzio(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override
    public final void run() throws Throwable {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        zzjdVar.zzL().zzab(this.zza);
    }
}
