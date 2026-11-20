package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;

final class zzjj extends ContentObserver {
    final zzjl zza;

    zzjj(zzjl zzjlVar, Handler handler) {
        super(null);
        Objects.requireNonNull(zzjlVar);
        this.zza = zzjlVar;
    }

    @Override
    public final void onChange(boolean z) {
        this.zza.zzb().set(true);
    }
}
