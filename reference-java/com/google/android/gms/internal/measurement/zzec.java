package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;

final class zzec extends zzeq {
    final String zza;
    final Object zzb;
    final zzfb zzc;

    zzec(zzfb zzfbVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(zzfbVar, false);
        this.zza = str;
        this.zzb = obj;
        Objects.requireNonNull(zzfbVar);
        this.zzc = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzc.zzQ())).logHealthData(5, this.zza, ObjectWrapper.wrap(this.zzb), ObjectWrapper.wrap(null), ObjectWrapper.wrap(null));
    }
}
