package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzhw implements Thread.UncaughtExceptionHandler {
    final zzhz zza;
    private final String zzb;

    public zzhw(zzhz zzhzVar, String str) {
        Objects.requireNonNull(zzhzVar);
        this.zza = zzhzVar;
        Preconditions.checkNotNull(str);
        this.zzb = str;
    }

    @Override
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.zza.zzu.zzaV().zzb().zzb(this.zzb, th);
    }
}
