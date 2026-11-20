package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;

final class zba implements PendingResultUtil.ResultConverter {
    private zba() {
        throw null;
    }

    zba(byte[] bArr) {
    }

    @Override
    public final Object convert(Result result) {
        return ((GoogleSignInResult) result).getSignInAccount();
    }
}
