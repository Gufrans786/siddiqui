package com.google.android.gms.internal.auth;

import android.database.ContentObserver;
import android.os.Handler;

final class zzcf extends ContentObserver {
    final zzcg zza;

    zzcf(zzcg zzcgVar, Handler handler) {
        super(null);
        this.zza = zzcgVar;
    }

    @Override
    public final void onChange(boolean z) {
        this.zza.zze();
    }
}
