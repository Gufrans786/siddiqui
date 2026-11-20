package io.grpc.okhttp.internal;

import java.io.UnsupportedEncodingException;
import okio.ByteString;
import org.bouncycastle.i18n.LocalizedMessage;

public final class Credentials {
    private Credentials() {
    }

    public static String basic(String str, String str2) {
        try {
            return "Basic " + ByteString.of((str + ":" + str2).getBytes(LocalizedMessage.DEFAULT_ENCODING)).base64();
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }
}
