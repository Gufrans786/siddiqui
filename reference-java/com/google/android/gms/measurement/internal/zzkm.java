package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

final class zzkm implements Runnable {
    final com.google.android.gms.internal.measurement.zzcu zza;
    final zzlj zzb;

    zzkm(zzlj zzljVar, com.google.android.gms.internal.measurement.zzcu zzcuVar) {
        this.zza = zzcuVar;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override
    public final void run() {
        Long lValueOf;
        zzlj zzljVar = this.zzb;
        zzic zzicVar = zzljVar.zzu.zzh().zzu;
        if (zzicVar.zzd().zzl().zzo(zzjk.ANALYTICS_STORAGE)) {
            if (!zzicVar.zzd().zzp(zzicVar.zzaZ().currentTimeMillis()) && zzicVar.zzd().zzl.zza() != 0) {
                lValueOf = Long.valueOf(zzicVar.zzd().zzl.zza());
            }
            if (lValueOf == null) {
                zzljVar.zzu.zzk().zzam(this.zza, lValueOf.longValue());
            } else {
                try {
                    this.zza.zzb(null);
                    return;
                } catch (RemoteException e) {
                    this.zzb.zzu.zzaV().zzb().zzb("getSessionId failed with exception", e);
                    return;
                }
            }
        }
        zzicVar.zzaV().zzh().zza("Analytics storage consent denied; will not get session id");
        lValueOf = null;
        if (lValueOf == null) {
            this.zza.zzb(null);
            return;
        }
        zzljVar.zzu.zzk().zzam(this.zza, lValueOf.longValue());
    }
}
