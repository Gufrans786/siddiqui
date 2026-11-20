package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzna implements Runnable {
    final zzgb zza;
    final zznf zzb;

    zzna(zznf zznfVar, zzgb zzgbVar) {
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
                zznlVar.zzu.zzaV().zzj().zza("Connected to remote service");
                zznlVar.zzL(this.zza);
            }
        }
        zznl zznlVar2 = this.zzb.zza;
        if (zznlVar2.zzab() != null) {
            zznlVar2.zzab().shutdownNow();
            zznlVar2.zzac(null);
        }
    }
}
