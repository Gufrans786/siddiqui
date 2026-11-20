package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzl implements Runnable {
    final zzp zza;
    final AppMeasurementDynamiteService zzb;

    zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, zzp zzpVar) {
        this.zza = zzpVar;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzb = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzj().zzV(this.zza);
    }
}
