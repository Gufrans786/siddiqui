package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.Callable;

final class zziv implements Callable {
    final zzr zza;
    final Bundle zzb;
    final zzjd zzc;

    zziv(zzjd zzjdVar, zzr zzrVar, Bundle bundle) {
        this.zza = zzrVar;
        this.zzb = bundle;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override
    public final Object call() throws Exception {
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzZ();
        return zzjdVar.zzL().zzaq(this.zza, this.zzb);
    }
}
