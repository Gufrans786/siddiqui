package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzj implements Runnable {
    final com.google.android.gms.internal.measurement.zzcu zza;
    final zzbg zzb;
    final String zzc;
    final AppMeasurementDynamiteService zzd;

    zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcu zzcuVar, zzbg zzbgVar, String str) {
        this.zza = zzcuVar;
        this.zzb = zzbgVar;
        this.zzc = str;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzd = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzd.zza.zzt().zzN(this.zza, this.zzb, this.zzc);
    }
}
