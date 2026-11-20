package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;

public final class zzf extends GmsClient {
    public zzf(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 23, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override
    protected final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return iInterfaceQueryLocalInterface instanceof zzo ? (zzo) iInterfaceQueryLocalInterface : new zzn(iBinder);
    }

    @Override
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.location.zzm.zzl;
    }

    @Override
    protected final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", "activity_recognition");
        return bundle;
    }

    @Override
    public final int getMinApkVersion() {
        return 11717000;
    }

    @Override
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override
    protected final String getStartServiceAction() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }

    public final void zzp(PendingIntent pendingIntent) throws RemoteException {
        Preconditions.checkNotNull(pendingIntent);
        ((zzo) getService()).zzm(pendingIntent);
    }
}
