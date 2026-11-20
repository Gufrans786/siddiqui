package com.google.android.gms.auth.api.identity;

final class zbe extends ClearTokenRequest.Builder {
    private String zba;
    private String zbb;

    zbe() {
    }

    zbe(ClearTokenRequest clearTokenRequest) {
        this.zba = clearTokenRequest.getToken();
        this.zbb = clearTokenRequest.zba();
    }

    @Override
    public final ClearTokenRequest build() {
        if (this.zba != null) {
            return new ClearTokenRequest(this.zba, this.zbb);
        }
        throw new IllegalStateException("Missing required properties: token");
    }

    @Override
    public final ClearTokenRequest.Builder setToken(String str) {
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.zba = str;
        return this;
    }

    @Override
    public final ClearTokenRequest.Builder zba(String str) {
        this.zbb = str;
        return this;
    }
}
