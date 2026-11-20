package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzel extends zzeq {
    final zzer zza;
    final zzfb zzb;

    zzel(zzfb zzfbVar, zzer zzerVar) {
        super(zzfbVar, true);
        this.zza = zzerVar;
        Objects.requireNonNull(zzfbVar);
        this.zzb = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zzQ())).setEventInterceptor(this.zza);
    }
}
