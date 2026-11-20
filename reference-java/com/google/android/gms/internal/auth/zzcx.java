package com.google.android.gms.internal.auth;

import android.util.Log;
import javax.annotation.Nullable;

final class zzcx extends zzdc {
    zzcx(zzcz zzczVar, String str, Double d, boolean z) {
        super(zzczVar, str, d, true, null);
    }

    @Override
    @Nullable
    final Object zza(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid double value for " + this.zzc + ": " + ((String) obj));
            return null;
        }
    }
}
