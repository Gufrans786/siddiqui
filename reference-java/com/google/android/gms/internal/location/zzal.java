package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationRequest;

final class zzal extends zzat {
    final ListenerHolder zza;
    final LocationRequest zzb;

    zzal(zzau zzauVar, GoogleApiClient googleApiClient, ListenerHolder listenerHolder, LocationRequest locationRequest) {
        super(googleApiClient);
        this.zza = listenerHolder;
        this.zzb = locationRequest;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzda) anyClient).zzu(new zzas(this.zza), this.zzb, zzau.zza(this));
    }
}
