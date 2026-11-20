package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzdm extends zzeq {
    final zzdf zza;
    final String zzb;
    final String zzc;
    final zzfb zzd;

    zzdm(zzfb zzfbVar, zzdf zzdfVar, String str, String str2) {
        super(zzfbVar, true);
        this.zza = zzdfVar;
        this.zzb = str;
        this.zzc = str2;
        Objects.requireNonNull(zzfbVar);
        this.zzd = zzfbVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzd.zzQ())).setCurrentScreenByScionActivityInfo(this.zza, this.zzb, this.zzc, this.zzh);
    }
}
