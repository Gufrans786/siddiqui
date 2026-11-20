package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Objects;

final class zbv implements LoaderManager.LoaderCallbacks {
    final SignInHubActivity zba;

    zbv(SignInHubActivity signInHubActivity, byte[] bArr) {
        Objects.requireNonNull(signInHubActivity);
        this.zba = signInHubActivity;
    }

    @Override
    public final Loader onCreateLoader(int i, Bundle bundle) {
        return new zbc(this.zba, GoogleApiClient.getAllClients());
    }

    @Override
    public final void onLoadFinished(Loader loader, Object obj) {
        SignInHubActivity signInHubActivity = this.zba;
        signInHubActivity.setResult(signInHubActivity.zba(), signInHubActivity.zbb());
        signInHubActivity.finish();
    }

    @Override
    public final void onLoaderReset(Loader loader) {
    }
}
