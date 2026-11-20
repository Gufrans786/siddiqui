package com.google.android.gms.internal.p000authapi;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Spliterator;
import java.util.Spliterators;

public abstract class zbbf extends AbstractCollection implements Serializable {
    private static final Object[] zba = new Object[0];

    zbbf() {
    }

    @Override
    @Deprecated
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this, 1296);
    }

    @Override
    public final Object[] toArray() {
        return toArray(zba);
    }

    @Override
    public abstract zbbk iterator();

    Object[] zbb() {
        throw null;
    }

    int zbc() {
        throw null;
    }

    int zbd() {
        throw null;
    }

    public zbbi zbe() {
        throw null;
    }

    abstract boolean zbf();

    int zbg(Object[] objArr, int i) {
        throw null;
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int size = size();
        int length = objArr.length;
        if (length < size) {
            Object[] objArrZbb = zbb();
            if (objArrZbb != null) {
                return Arrays.copyOfRange(objArrZbb, zbc(), zbd(), objArr.getClass());
            }
            if (length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, size);
        } else if (length > size) {
            objArr[size] = null;
        }
        zbg(objArr, 0);
        return objArr;
    }
}
