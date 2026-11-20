package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

final class zzim implements Callable {
    final String zza;
    final String zzb;
    final String zzc;
    final zzjd zzd;

    zzim(zzjd zzjdVar, String str, String str2, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        Objects.requireNonNull(zzjdVar);
        this.zzd = zzjdVar;
    }

    @Override
    public final Object call() throws Exception {
        zzjd zzjdVar = this.zzd;
        zzjdVar.zzL().zzZ();
        return zzjdVar.zzL().zzj().zzs(this.zza, this.zzb, this.zzc);
    }
}
