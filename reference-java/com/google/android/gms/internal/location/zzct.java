package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;

final class zzct implements ListenerHolder.Notifier {
    final LocationResult zza;

    zzct(zzcw zzcwVar, LocationResult locationResult) {
        this.zza = locationResult;
    }

    @Override
    public final void notifyListener(Object obj) {
        ((LocationCallback) obj).onLocationResult(this.zza);
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
