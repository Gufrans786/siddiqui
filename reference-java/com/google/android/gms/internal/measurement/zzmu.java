package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

final class zzmu implements Iterator {
    private final Iterator zza;

    public zzmu(Iterator it) {
        this.zza = it;
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.zza.next();
        return entry.getValue() instanceof zzmv ? new zzmt(entry, null) : entry;
    }

    @Override
    public final void remove() {
        this.zza.remove();
    }
}
