package com.google.android.gms.internal.measurement;

import java.util.Iterator;

final class zzaj implements Iterator {
    final Iterator zza;

    zzaj(Iterator it) {
        this.zza = it;
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final Object next() {
        return new zzas((String) this.zza.next());
    }
}
