package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

public final class zzam implements zzao {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof zzam;
    }

    public final int hashCode() {
        return 1;
    }

    @Override
    public final String zzc() {
        return AbstractJsonLexerKt.NULL;
    }

    @Override
    public final zzao zzcA(String str, zzg zzgVar, List list) {
        throw new IllegalStateException(String.format("null has no function %s", str));
    }

    @Override
    public final Double zzd() {
        return Double.valueOf(0.0d);
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
        return zzao.zzg;
    }
}
