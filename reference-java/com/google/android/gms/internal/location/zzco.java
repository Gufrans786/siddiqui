package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzco extends zzj {
    final TaskCompletionSource zza;
    final com.google.android.gms.location.zzu zzb;

    zzco(TaskCompletionSource taskCompletionSource, com.google.android.gms.location.zzu zzuVar) {
        this.zza = taskCompletionSource;
        this.zzb = zzuVar;
    }

    @Override
    public final void zzd(zzg zzgVar) {
        TaskUtil.setResultOrApiException(zzgVar.getStatus(), this.zza);
    }

    @Override
    public final void zze() throws RemoteException {
        this.zzb.zze();
    }
}
