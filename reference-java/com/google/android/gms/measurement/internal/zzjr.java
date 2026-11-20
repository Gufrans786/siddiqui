package com.google.android.gms.measurement.internal;

import android.util.Log;
import java.util.Objects;

final class zzjr implements zzgm {
    final zzic zza;

    zzjr(zzjs zzjsVar, zzic zzicVar) {
        this.zza = zzicVar;
        Objects.requireNonNull(zzjsVar);
    }

    @Override
    public final boolean zza() {
        return Log.isLoggable(this.zza.zzaV().zzn(), 3);
    }
}
