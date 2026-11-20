package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

final class zzid implements Callable {
    final String zza;
    final zzjd zzb;

    zzid(zzjd zzjdVar, String str) {
        this.zza = str;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override
    public final Object call() throws Exception {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        return zzjdVar.zzL().zzj().zzn(this.zza);
    }
}
