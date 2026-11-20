package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;

final class zzjw extends ContentObserver {
    zzjw(zzjy zzjyVar, Handler handler) {
        super(null);
        Objects.requireNonNull(zzjyVar);
    }

    @Override
    public final void onChange(boolean z) {
        zzkm.zzc();
    }
}
