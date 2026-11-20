package com.google.android.gms.internal.p001authapiphone;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;

final class zzt extends Api.AbstractClientBuilder {
    zzt() {
    }

    @Override
    public final Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new zzw(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
