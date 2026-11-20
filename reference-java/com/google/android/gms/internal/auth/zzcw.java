package com.google.android.gms.internal.auth;

import android.util.Log;
import javax.annotation.Nullable;

final class zzcw extends zzdc {
    zzcw(zzcz zzczVar, String str, Boolean bool, boolean z) {
        super(zzczVar, str, bool, true, null);
    }

    @Override
    @Nullable
    final Object zza(Object obj) {
        if (zzcb.zzc.matcher(obj).matches()) {
            return true;
        }
        if (zzcb.zzd.matcher(obj).matches()) {
            return false;
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + this.zzc + ": " + ((String) obj));
        return null;
    }
}
