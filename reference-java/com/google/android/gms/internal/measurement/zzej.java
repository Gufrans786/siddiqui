package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzej extends zzeq {
    final boolean zza;
    final zzfb zzb;

    zzej(zzfb zzfbVar, boolean z) {
        super(zzfbVar, true);
        this.zza = z;
        Objects.requireNonNull(zzfbVar);
        this.zzb = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zzQ())).setDataCollectionEnabled(this.zza);
    }
}
