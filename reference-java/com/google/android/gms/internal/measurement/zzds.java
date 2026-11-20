package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzds extends zzeq {
    final String zza;
    final zzfb zzb;

    zzds(zzfb zzfbVar, String str) {
        super(zzfbVar, true);
        this.zza = str;
        Objects.requireNonNull(zzfbVar);
        this.zzb = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zzQ())).beginAdUnitExposure(this.zza, this.zzi);
    }
}
