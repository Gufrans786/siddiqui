package com.oppwa.mobile.connect.threeds;

import android.content.Context;
import com.nsoftware.ipworks3ds.sdk.ClientEventListener;
import com.oppwa.mobile.connect.threeds.constant.TransactionMode;

final class c implements ClientEventListener {
    private final Context a;
    private final TransactionMode b;

    public c(Context context, TransactionMode transactionMode) {
        this.a = context;
        this.b = transactionMode;
    }

    @Override
    public void fireDataPacketIn(byte[] bArr) {
    }

    @Override
    public void fireDataPacketOut(byte[] bArr) {
    }

    @Override
    public void fireLog(int i, String str, String str2) throws Throwable {
        if ("CRes".equals(str2)) {
            e.a(this.a, str2 + " - " + str);
        } else if ("SW".equals(str2)) {
            e.a(this.a, String.format("%s - %s (%s)", str2, str, e.a(str)));
        }
    }

    @Override
    public void fireSSLServerAuthentication(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        if (this.b == TransactionMode.TEST) {
            zArr[0] = true;
        }
    }

    @Override
    public void fireSSLStatus(String str) {
    }
}
