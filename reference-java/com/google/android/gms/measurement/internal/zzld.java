package com.google.android.gms.measurement.internal;

import java.util.Comparator;

final class zzld implements Comparator {
    static final zzld zza = new zzld();

    private zzld() {
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
    }
}
