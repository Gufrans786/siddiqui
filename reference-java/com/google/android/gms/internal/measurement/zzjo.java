package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;

final class zzjo extends ContentObserver {
    final zzjr zza;

    zzjo(zzjr zzjrVar, Handler handler) {
        super(null);
        Objects.requireNonNull(zzjrVar);
        this.zza = zzjrVar;
    }

    @Override
    public final void onChange(boolean z) {
        this.zza.zzc();
    }
}
