package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;

final class zzas implements zzcs {
    private ListenerHolder zza;

    zzas(ListenerHolder listenerHolder) {
        this.zza = listenerHolder;
    }

    @Override
    public final synchronized ListenerHolder zza() {
        return this.zza;
    }

    @Override
    public final void zzb() {
    }

    @Override
    public final synchronized void zzc(ListenerHolder listenerHolder) {
        ListenerHolder listenerHolder2 = this.zza;
        if (listenerHolder2 != listenerHolder) {
            listenerHolder2.clear();
            this.zza = listenerHolder;
        }
    }
}
