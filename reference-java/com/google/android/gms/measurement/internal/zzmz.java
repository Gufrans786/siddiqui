package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import java.util.Objects;

final class zzmz implements Runnable {
    final ComponentName zza;
    final zznf zzb;

    zzmz(zznf zznfVar, ComponentName componentName) {
        this.zza = componentName;
        Objects.requireNonNull(zznfVar);
        this.zzb = zznfVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzW(this.zza);
    }
}
