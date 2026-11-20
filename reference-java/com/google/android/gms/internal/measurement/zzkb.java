package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.ArrayMap;

public final class zzkb {
    public static final int zza = 0;
    private static final ArrayMap zzb = new ArrayMap();

    public static synchronized Uri zza(String str) {
        ArrayMap arrayMap = zzb;
        Uri uri = (Uri) arrayMap.get("com.google.android.gms.measurement");
        if (uri != null) {
            return uri;
        }
        String strEncode = Uri.encode("com.google.android.gms.measurement");
        String.valueOf(strEncode);
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(strEncode)));
        arrayMap.put("com.google.android.gms.measurement", uri2);
        return uri2;
    }
}
