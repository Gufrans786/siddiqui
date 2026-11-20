package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;

final class zzam extends zzat {
    final PendingIntent zza;
    final LocationRequest zzb;

    zzam(zzau zzauVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent, LocationRequest locationRequest) {
        super(googleApiClient);
        this.zza = pendingIntent;
        this.zzb = locationRequest;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzda) anyClient).zzw(this.zza, this.zzb, zzau.zza(this));
    }
}
