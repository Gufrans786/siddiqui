package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

public final class zzat implements zzao {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof zzat;
    }

    @Override
    public final String zzc() {
        return "undefined";
    }

    @Override
    public final zzao zzcA(String str, zzg zzgVar, List list) {
        throw new IllegalStateException(String.format("Undefined has no function %s", str));
    }

    @Override
    public final Double zzd() {
        return Double.valueOf(Double.NaN);
    }

    @Override
    public final Boolean zze() {
        return false;
    }

    @Override
    public final Iterator zzf() {
        return null;
    }

    @Override
    public final zzao zzt() {
        return zzao.zzf;
    }
}
