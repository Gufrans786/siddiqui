package com.nimbusds.jose;

import com.nimbusds.jose.Algorithm;
import java.util.Collection;
import java.util.LinkedHashSet;
import net.jcip.annotations.Immutable;

@Immutable
class AlgorithmFamily<T extends Algorithm> extends LinkedHashSet<T> {
    private static final long serialVersionUID = 1;

    public AlgorithmFamily(T... tArr) {
        for (T t : tArr) {
            super.add(t);
        }
    }

    @Override
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }
}
