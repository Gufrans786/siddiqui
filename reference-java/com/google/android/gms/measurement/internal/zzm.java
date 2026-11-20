package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzm implements Runnable {
    final com.google.android.gms.internal.measurement.zzcu zza;
    final String zzb;
    final String zzc;
    final AppMeasurementDynamiteService zzd;

    zzm(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcu zzcuVar, String str, String str2) {
        this.zza = zzcuVar;
        this.zzb = str;
        this.zzc = str2;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzd = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzd.zza.zzt().zzs(this.zza, this.zzb, this.zzc);
    }
}
