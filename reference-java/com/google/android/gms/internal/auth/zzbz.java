package com.google.android.gms.internal.auth;

import android.util.Log;
import com.bumptech.glide.load.Key;
import com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse;
import java.io.UnsupportedEncodingException;

public abstract class zzbz extends FastSafeParcelableJsonResponse {
    @Override
    public final byte[] toByteArray() {
        try {
            return toString().getBytes(Key.STRING_CHARSET_NAME);
        } catch (UnsupportedEncodingException e) {
            Log.e("AUTH", "Error serializing object.", e);
            return null;
        }
    }
}
