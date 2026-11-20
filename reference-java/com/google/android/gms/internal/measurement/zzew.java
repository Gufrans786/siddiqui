package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzew extends zzeq {
    final Activity zza;
    final zzfa zzb;

    zzew(zzfa zzfaVar, Activity activity) {
        super(zzfaVar.zza, true);
        this.zza = activity;
        Objects.requireNonNull(zzfaVar);
        this.zzb = zzfaVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zza.zzQ())).onActivityPausedByScionActivityInfo(zzdf.zza(this.zza), this.zzi);
    }
}
