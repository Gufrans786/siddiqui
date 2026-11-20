package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzdz extends zzeq {
    final zzco zza;
    final zzfb zzb;

    zzdz(zzfb zzfbVar, zzco zzcoVar) {
        super(zzfbVar, true);
        this.zza = zzcoVar;
        Objects.requireNonNull(zzfbVar);
        this.zzb = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zzQ())).getCurrentScreenName(this.zza);
    }

    @Override
    protected final void zzb() {
        this.zza.zzb(null);
    }
}
