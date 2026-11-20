package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzn implements Runnable {
    final com.google.android.gms.internal.measurement.zzcu zza;
    final AppMeasurementDynamiteService zzb;

    zzn(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcu zzcuVar) {
        this.zza = zzcuVar;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzb = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        AppMeasurementDynamiteService appMeasurementDynamiteService = this.zzb;
        appMeasurementDynamiteService.zza.zzk().zzap(this.zza, appMeasurementDynamiteService.zza.zzA());
    }
}
