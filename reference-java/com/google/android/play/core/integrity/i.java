package com.google.android.play.core.integrity;

final class i extends StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder {
    private long a;
    private int b;
    private byte c;

    i() {
    }

    @Override
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest build() {
        if (this.c == 3) {
            return new k(this.a, this.b, null, null);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.c & 1) == 0) {
            sb.append(" cloudProjectNumber");
        }
        if ((this.c & 2) == 0) {
            sb.append(" webViewRequestMode");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.a = j;
        this.c = (byte) (this.c | 1);
        return this;
    }

    @Override
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setWebViewRequestMode(int i) {
        this.b = i;
        this.c = (byte) (this.c | 2);
        return this;
    }
}
