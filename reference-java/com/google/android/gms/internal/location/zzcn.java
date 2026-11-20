package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzcn extends zzj {
    final Object zza;
    final TaskCompletionSource zzb;

    zzcn(Object obj, TaskCompletionSource taskCompletionSource) {
        this.zza = obj;
        this.zzb = taskCompletionSource;
    }

    @Override
    public final void zzd(zzg zzgVar) {
        TaskUtil.setResultOrApiException(zzgVar.getStatus(), this.zza, this.zzb);
    }

    @Override
    public final void zze() {
    }
}
