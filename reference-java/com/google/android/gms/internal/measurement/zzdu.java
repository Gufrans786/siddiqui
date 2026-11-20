package com.google.android.gms.internal.measurement;

import java.util.Objects;

final class zzdu extends zzcw {
    final Runnable zza;

    zzdu(zzdv zzdvVar, Runnable runnable) {
        this.zza = runnable;
        Objects.requireNonNull(zzdvVar);
    }

    @Override
    public final void zze() {
        this.zza.run();
    }
}
