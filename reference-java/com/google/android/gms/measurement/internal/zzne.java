package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

final class zzne implements Runnable {
    final ConnectionResult zza;
    final zznf zzb;

    zzne(zznf zznfVar, ConnectionResult connectionResult) {
        this.zza = connectionResult;
        Objects.requireNonNull(zznfVar);
        this.zzb = zznfVar;
    }

    @Override
    public final void run() {
        zznl zznlVar = this.zzb.zza;
        zznlVar.zzaa(null);
        if (this.zza.getErrorCode() != 7777) {
            zznlVar.zzX();
            return;
        }
        if (zznlVar.zzab() == null) {
            zznlVar.zzac(Executors.newScheduledThreadPool(1));
        }
        zznlVar.zzab().schedule(new Runnable() {
            @Override
            public final void run() {
                final zznl zznlVar2 = this.zza.zzb.zza;
                zzhz zzhzVarZzaW = zznlVar2.zzu.zzaW();
                Objects.requireNonNull(zznlVar2);
                zzhzVarZzaW.zzj(new Runnable() {
                    @Override
                    public final void run() {
                        zznlVar2.zzI();
                    }
                });
            }
        }, ((Long) zzfy.zzZ.zzb(null)).longValue(), TimeUnit.MILLISECONDS);
    }
}
