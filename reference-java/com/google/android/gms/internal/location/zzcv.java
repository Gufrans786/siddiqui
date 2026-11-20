package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;

final class zzcv implements ListenerHolder.Notifier {
    final zzcw zza;

    zzcv(zzcw zzcwVar) {
        this.zza = zzcwVar;
    }

    @Override
    public final void notifyListener(Object obj) {
        this.zza.zza.zzb();
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
