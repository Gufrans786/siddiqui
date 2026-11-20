package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

final class zziq implements Callable {
    final zzr zza;
    final zzjd zzb;

    zziq(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override
    public final Object call() throws Exception {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        return new zzao(zzjdVar.zzL().zzy(this.zza.zza));
    }
}
