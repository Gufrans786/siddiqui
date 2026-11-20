package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;

final class zzcy implements ListenerHolder.Notifier {
    final zzcz zza;

    zzcy(zzcz zzczVar) {
        this.zza = zzczVar;
    }

    @Override
    public final void notifyListener(Object obj) {
        this.zza.zza.zzb();
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
