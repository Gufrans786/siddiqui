package com.google.android.play.core.integrity;

import android.app.Activity;

final class c extends IntegrityDialogRequest.Builder {
    private int a;
    private Activity b;
    private IntegrityDialogRequest.IntegrityResponse c;
    private byte d;

    c() {
    }

    @Override
    public final IntegrityDialogRequest build() {
        Activity activity;
        IntegrityDialogRequest.IntegrityResponse integrityResponse;
        if (this.d == 1 && (activity = this.b) != null && (integrityResponse = this.c) != null) {
            return new e(this.a, activity, integrityResponse, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.d == 0) {
            sb.append(" typeCode");
        }
        if (this.b == null) {
            sb.append(" activity");
        }
        if (this.c == null) {
            sb.append(" integrityResponse");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override
    public final IntegrityDialogRequest.Builder setActivity(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Null activity");
        }
        this.b = activity;
        return this;
    }

    @Override
    public final IntegrityDialogRequest.Builder setIntegrityResponse(IntegrityDialogRequest.IntegrityResponse integrityResponse) {
        if (integrityResponse == null) {
            throw new NullPointerException("Null integrityResponse");
        }
        this.c = integrityResponse;
        return this;
    }

    @Override
    public final IntegrityDialogRequest.Builder setTypeCode(int i) {
        this.a = i;
        this.d = (byte) 1;
        return this;
    }
}
