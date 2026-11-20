package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzdq extends zzeq {
    final long zza;
    final zzfb zzb;

    zzdq(zzfb zzfbVar, long j) {
        super(zzfbVar, true);
        this.zza = j;
        Objects.requireNonNull(zzfbVar);
        this.zzb = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zzQ())).setSessionTimeoutDuration(this.zza);
    }
}
