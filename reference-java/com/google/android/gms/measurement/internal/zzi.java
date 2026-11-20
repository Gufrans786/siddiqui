package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzi implements Runnable {
    final com.google.android.gms.internal.measurement.zzcu zza;
    final AppMeasurementDynamiteService zzb;

    zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcu zzcuVar) {
        this.zza = zzcuVar;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzb = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzt().zzD(this.zza);
    }
}
