package com.google.android.play.core.integrity;

final class f extends IntegrityTokenRequest.Builder {
    private String a;
    private Long b;

    f() {
    }

    @Override
    public final IntegrityTokenRequest build() {
        String str = this.a;
        if (str != null) {
            return new h(str, this.b, null);
        }
        throw new IllegalStateException("Missing required properties: nonce");
    }

    @Override
    public final IntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.b = Long.valueOf(j);
        return this;
    }

    @Override
    public final IntegrityTokenRequest.Builder setNonce(String str) {
        if (str == null) {
            throw new NullPointerException("Null nonce");
        }
        this.a = str;
        return this;
    }
}
