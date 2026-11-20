package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
public final class zzhe extends AbstractList implements RandomAccess, zzff {
    private final zzff zza;

    public zzhe(zzff zzffVar) {
        this.zza = zzffVar;
    }

    @Override
    public final Object get(int i) {
        return ((zzfe) this.zza).get(i);
    }

    @Override
    public final Iterator iterator() {
        return new zzhd(this);
    }

    @Override
    public final ListIterator listIterator(int i) {
        return new zzhc(this, i);
    }

    @Override
    public final int size() {
        return this.zza.size();
    }

    @Override
    public final zzff zze() {
        return this;
    }

    @Override
    public final List zzg() {
        return this.zza.zzg();
    }
}
