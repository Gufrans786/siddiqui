package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzih implements Runnable {
    final zzah zza;
    final zzr zzb;
    final zzjd zzc;

    zzih(zzjd zzjdVar, zzah zzahVar, zzr zzrVar) {
        this.zza = zzahVar;
        this.zzb = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override
    public final void run() throws Throwable {
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzZ();
        zzah zzahVar = this.zza;
        if (zzahVar.zzc.zza() == null) {
            zzjdVar.zzL().zzam(zzahVar, this.zzb);
        } else {
            zzjdVar.zzL().zzak(zzahVar, this.zzb);
        }
    }
}
