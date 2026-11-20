package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzma implements Runnable {
    final zzmb zza;

    zzma(zzmb zzmbVar) {
        Objects.requireNonNull(zzmbVar);
        this.zza = zzmbVar;
    }

    @Override
    public final void run() {
        this.zza.zzx(null);
    }
}
