package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.List;

final class zzbt extends zzbu {
    final List zza;

    zzbt(zzbv zzbvVar, GoogleApiClient googleApiClient, List list) {
        super(googleApiClient);
        this.zza = list;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzda) anyClient).zzy(this.zza, zzbv.zza(this));
    }
}
