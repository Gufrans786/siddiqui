package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzk implements Runnable {
    final com.google.android.gms.internal.measurement.zzcu zza;
    final String zzb;
    final String zzc;
    final boolean zzd;
    final AppMeasurementDynamiteService zze;

    zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcu zzcuVar, String str, String str2, boolean z) {
        this.zza = zzcuVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zze = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zze.zza.zzt().zzu(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
