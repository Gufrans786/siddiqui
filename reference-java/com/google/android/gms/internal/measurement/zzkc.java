package com.google.android.gms.internal.measurement;

import android.util.Log;
import javax.annotation.Nullable;

final class zzkc extends zzkm {
    zzkc(zzkg zzkgVar, String str, Long l, boolean z) {
        super(zzkgVar, str, l, true, null);
    }

    @Override
    @Nullable
    final Object zza(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String str = this.zzb;
        String string = obj.toString();
        StringBuilder sb = new StringBuilder(str.length() + 25 + string.length());
        sb.append("Invalid long value for ");
        sb.append(str);
        sb.append(": ");
        sb.append(string);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
