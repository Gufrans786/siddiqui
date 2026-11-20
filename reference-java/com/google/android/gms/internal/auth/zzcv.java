package com.google.android.gms.internal.auth;

import android.util.Log;
import javax.annotation.Nullable;

final class zzcv extends zzdc {
    zzcv(zzcz zzczVar, String str, Long l, boolean z) {
        super(zzczVar, str, l, true, null);
    }

    @Override
    @Nullable
    final Object zza(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid long value for " + this.zzc + ": " + ((String) obj));
            return null;
        }
    }
}
