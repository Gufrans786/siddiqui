package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;

final class zzlv implements Runnable {
    final Bundle zza;
    final zzlu zzb;
    final zzlu zzc;
    final long zzd;
    final zzmb zze;

    zzlv(zzmb zzmbVar, Bundle bundle, zzlu zzluVar, zzlu zzluVar2, long j) {
        this.zza = bundle;
        this.zzb = zzluVar;
        this.zzc = zzluVar2;
        this.zzd = j;
        Objects.requireNonNull(zzmbVar);
        this.zze = zzmbVar;
    }

    @Override
    public final void run() {
        this.zze.zzt(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
