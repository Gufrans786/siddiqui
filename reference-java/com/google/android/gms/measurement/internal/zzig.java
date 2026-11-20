package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzig implements Runnable {
    final String zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final zzjd zze;

    zzig(zzjd zzjdVar, String str, String str2, String str3, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j;
        Objects.requireNonNull(zzjdVar);
        this.zze = zzjdVar;
    }

    @Override
    public final void run() {
        String str = this.zza;
        if (str == null) {
            zzjd zzjdVar = this.zze;
            zzjdVar.zzL().zzat(this.zzb, null);
        } else {
            zzlu zzluVar = new zzlu(this.zzc, str, this.zzd);
            zzjd zzjdVar2 = this.zze;
            zzjdVar2.zzL().zzat(this.zzb, zzluVar);
        }
    }
}
