package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzef extends zzeq {
    final String zza;
    final zzco zzb;
    final zzfb zzc;

    zzef(zzfb zzfbVar, String str, zzco zzcoVar) {
        super(zzfbVar, true);
        this.zza = str;
        this.zzb = zzcoVar;
        Objects.requireNonNull(zzfbVar);
        this.zzc = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzc.zzQ())).getMaxUserProperties(this.zza, this.zzb);
    }

    @Override
    protected final void zzb() {
        this.zzb.zzb(null);
    }
}
