package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzdn extends zzeq {
    final Boolean zza;
    final zzfb zzb;

    zzdn(zzfb zzfbVar, Boolean bool) {
        super(zzfbVar, true);
        this.zza = bool;
        Objects.requireNonNull(zzfbVar);
        this.zzb = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zzQ())).setMeasurementEnabled(this.zza.booleanValue(), this.zzh);
    }
}
