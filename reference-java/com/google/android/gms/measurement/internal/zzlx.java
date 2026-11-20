package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzlx implements Runnable {
    final zzmb zza;

    zzlx(zzmb zzmbVar) {
        Objects.requireNonNull(zzmbVar);
        this.zza = zzmbVar;
    }

    @Override
    public final void run() {
        zzmb zzmbVar = this.zza;
        zzmbVar.zza = zzmbVar.zzw();
    }
}
