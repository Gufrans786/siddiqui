package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zbg extends zbl {
    final Context zba;
    final GoogleSignInOptions zbb;

    zbg(GoogleApiClient googleApiClient, Context context, GoogleSignInOptions googleSignInOptions) {
        super(googleApiClient);
        this.zba = context;
        this.zbb = googleSignInOptions;
    }

    @Override
    protected final Result createFailedResult(Status status) {
        return new GoogleSignInResult(null, status);
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        zbs zbsVar = (zbs) ((zbe) anyClient).getService();
        Context context = this.zba;
        GoogleSignInOptions googleSignInOptions = this.zbb;
        zbsVar.zbc(new zbf(this, context, googleSignInOptions), googleSignInOptions);
    }
}
