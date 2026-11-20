package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzck implements zzcs {
    final ListenerHolder zza;
    final TaskCompletionSource zzb;

    zzck(zzda zzdaVar, ListenerHolder listenerHolder, TaskCompletionSource taskCompletionSource) {
        this.zza = listenerHolder;
        this.zzb = taskCompletionSource;
    }

    @Override
    public final ListenerHolder zza() {
        return this.zza;
    }

    @Override
    public final void zzb() {
        this.zzb.trySetResult(null);
    }

    @Override
    public final void zzc(ListenerHolder listenerHolder) {
        throw new IllegalStateException();
    }
}
