package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzmy implements Runnable {
    final zzgb zza;
    final zznf zzb;

    zzmy(zznf zznfVar, zzgb zzgbVar) {
        this.zza = zzgbVar;
        Objects.requireNonNull(zznfVar);
        this.zzb = zznfVar;
    }

    @Override
    public final void run() {
        zznf zznfVar = this.zzb;
        synchronized (zznfVar) {
            zznfVar.zzd(false);
            zznl zznlVar = zznfVar.zza;
            if (!zznlVar.zzh()) {
                zznlVar.zzu.zzaV().zzk().zza("Connected to service");
                zznlVar.zzL(this.zza);
            }
        }
    }
}
