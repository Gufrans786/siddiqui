package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.identity.zbk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;

final class zbae extends Api.AbstractClientBuilder {
    zbae() {
    }

    @Override
    public final Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new zbg(context, looper, (zbk) obj, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
