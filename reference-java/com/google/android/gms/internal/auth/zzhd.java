package com.google.android.gms.internal.auth;

import java.util.Iterator;

final class zzhd implements Iterator {
    final Iterator zza;
    final zzhe zzb;

    zzhd(zzhe zzheVar) {
        this.zzb = zzheVar;
        this.zza = zzheVar.zza.iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final Object next() {
        return (String) this.zza.next();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
