package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;

final class zzdh extends zzeq {
    final String zza;
    final String zzb;
    final Object zzc;
    final boolean zzd;
    final zzfb zze;

    zzdh(zzfb zzfbVar, String str, String str2, Object obj, boolean z) {
        super(zzfbVar, true);
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = z;
        Objects.requireNonNull(zzfbVar);
        this.zze = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zze.zzQ())).setUserProperty(this.zza, this.zzb, ObjectWrapper.wrap(this.zzc), this.zzd, this.zzh);
    }
}
