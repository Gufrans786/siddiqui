package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

final class zzp implements zzjp {
    public final com.google.android.gms.internal.measurement.zzda zza;
    final AppMeasurementDynamiteService zzb;

    zzp(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzda zzdaVar) {
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzdaVar;
    }

    @Override
    public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.zza.zze(str, str2, bundle, j);
        } catch (RemoteException e) {
            zzic zzicVar = this.zzb.zza;
            if (zzicVar != null) {
                zzicVar.zzaV().zze().zzb("Event interceptor threw exception", e);
            }
        }
    }
}
