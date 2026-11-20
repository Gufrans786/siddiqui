package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzee extends zzeq {
    final Bundle zza;
    final zzco zzb;
    final zzfb zzc;

    zzee(zzfb zzfbVar, Bundle bundle, zzco zzcoVar) {
        super(zzfbVar, true);
        this.zza = bundle;
        this.zzb = zzcoVar;
        Objects.requireNonNull(zzfbVar);
        this.zzc = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzc.zzQ())).performAction(this.zza, this.zzb, this.zzh);
    }

    @Override
    protected final void zzb() {
        this.zzb.zzb(null);
    }
}
