package com.oppwa.mobile.connect.provider;

import android.content.Context;
import com.oppwa.mobile.connect.utils.Logger;

abstract class f implements IPaymentProvider {
    protected Connect.ProviderMode a;
    protected Connect.ProviderDomain b;
    private final Context c;

    f(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain) {
        this.c = context;
        this.a = providerMode;
        this.b = providerDomain;
        Logger.setProviderMode(providerMode);
    }

    @Override
    public Context getContext() {
        return this.c;
    }

    @Override
    public Connect.ProviderDomain getProviderDomain() {
        return this.b;
    }

    @Override
    public Connect.ProviderMode getProviderMode() {
        return this.a;
    }

    @Override
    public void setProviderDomain(Connect.ProviderDomain providerDomain) {
        this.b = providerDomain;
    }

    @Override
    public void setProviderMode(Connect.ProviderMode providerMode) {
        this.a = providerMode;
        Logger.setProviderMode(providerMode);
    }
}
