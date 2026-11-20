package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

abstract class zzku extends AbstractList implements zzmo {
    private boolean zza;

    zzku(boolean z) {
        this.zza = z;
    }

    @Override
    public void add(int i, Object obj) {
        zzcF();
        super.add(i, obj);
    }

    @Override
    public final boolean addAll(int i, Collection collection) {
        zzcF();
        return super.addAll(i, collection);
    }

    @Override
    public final void clear() {
        zzcF();
        super.clear();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (iHashCode * 31) + get(i).hashCode();
        }
        return iHashCode;
    }

    @Override
    public Object remove(int i) {
        zzcF();
        return super.remove(i);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        zzcF();
        return super.removeAll(collection);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        zzcF();
        return super.retainAll(collection);
    }

    @Override
    public Object set(int i, Object obj) {
        zzcF();
        return super.set(i, obj);
    }

    @Override
    public final boolean zza() {
        return this.zza;
    }

    @Override
    public final void zzb() {
        if (this.zza) {
            this.zza = false;
        }
    }

    protected final void zzcF() {
        if (!this.zza) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean add(Object obj) {
        zzcF();
        return super.add(obj);
    }

    @Override
    public boolean addAll(Collection collection) {
        zzcF();
        return super.addAll(collection);
    }

    @Override
    public final boolean remove(Object obj) {
        zzcF();
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }
}
