package com.google.android.gms.internal.auth;

import java.util.ListIterator;

final class zzhc implements ListIterator {
    final ListIterator zza;
    final int zzb;
    final zzhe zzc;

    zzhc(zzhe zzheVar, int i) {
        this.zzc = zzheVar;
        this.zzb = i;
        this.zza = zzheVar.zza.listIterator(i);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.zza.hasPrevious();
    }

    @Override
    public final Object next() {
        return (String) this.zza.next();
    }

    @Override
    public final int nextIndex() {
        return this.zza.nextIndex();
    }

    @Override
    public final Object previous() {
        return (String) this.zza.previous();
    }

    @Override
    public final int previousIndex() {
        return this.zza.previousIndex();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
