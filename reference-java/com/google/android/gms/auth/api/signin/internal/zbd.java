package com.google.android.gms.auth.api.signin.internal;

import android.content.Intent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public final class zbd implements GoogleSignInApi {
    private static final GoogleSignInOptions zba(GoogleApiClient googleApiClient) {
        return ((zbe) googleApiClient.getClient(Auth.zbb)).zba();
    }

    @Override
    public final Intent getSignInIntent(GoogleApiClient googleApiClient) {
        return zbm.zba(googleApiClient.getContext(), zba(googleApiClient));
    }

    @Override
    public final GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        return zbm.zbg(intent);
    }

    @Override
    public final PendingResult<Status> revokeAccess(GoogleApiClient googleApiClient) {
        return zbm.zbf(googleApiClient, googleApiClient.getContext(), false);
    }

    @Override
    public final PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return zbm.zbe(googleApiClient, googleApiClient.getContext(), false);
    }

    @Override
    public final OptionalPendingResult<GoogleSignInResult> silentSignIn(GoogleApiClient googleApiClient) {
        return zbm.zbd(googleApiClient, googleApiClient.getContext(), zba(googleApiClient), false);
    }
}
