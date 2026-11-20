package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationListener;

final class zzcx implements ListenerHolder.Notifier {
    final Location zza;

    zzcx(zzcz zzczVar, Location location) {
        this.zza = location;
    }

    @Override
    public final void notifyListener(Object obj) {
        ((LocationListener) obj).onLocationChanged(this.zza);
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
