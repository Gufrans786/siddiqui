package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzcj extends LocationCallback {
    final TaskCompletionSource zza;
    final zzda zzb;

    zzcj(zzda zzdaVar, TaskCompletionSource taskCompletionSource) {
        this.zzb = zzdaVar;
        this.zza = taskCompletionSource;
    }

    @Override
    public final void onLocationResult(LocationResult locationResult) {
        this.zza.trySetResult(locationResult.getLastLocation());
        try {
            this.zzb.zzB(ListenerHolders.createListenerKey(this, "GetCurrentLocation"), false, new TaskCompletionSource());
        } catch (RemoteException unused) {
        }
    }
}
