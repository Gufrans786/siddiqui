package com.google.android.gms.measurement.internal;

import java.util.Iterator;
import java.util.Objects;

final class zzbd implements Iterator {
    final Iterator zza;
    final zzbe zzb;

    zzbd(zzbe zzbeVar) {
        Objects.requireNonNull(zzbeVar);
        this.zzb = zzbeVar;
        this.zza = zzbeVar.zzg().keySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }

    @Override
    public final String next() {
        return (String) this.zza.next();
    }
}
