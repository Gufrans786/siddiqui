package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzis implements Runnable {
    final zzbg zza;
    final String zzb;
    final zzjd zzc;

    zzis(zzjd zzjdVar, zzbg zzbgVar, String str) {
        this.zza = zzbgVar;
        this.zzb = str;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override
    public final void run() throws Throwable {
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzZ();
        zzjdVar.zzL().zzD(this.zza, this.zzb);
    }
}
