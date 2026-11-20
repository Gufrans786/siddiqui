package com.google.common.collect;

import java.util.ListIterator;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingListIterator<E> extends ForwardingIterator<E> implements ListIterator<E> {
    @Override
    public abstract ListIterator<E> delegate();

    protected ForwardingListIterator() {
    }

    @Override
    public void add(@ParametricNullness E element) {
        delegate().add(element);
    }

    @Override
    public boolean hasPrevious() {
        return delegate().hasPrevious();
    }

    @Override
    public int nextIndex() {
        return delegate().nextIndex();
    }

    @Override
    @ParametricNullness
    public E previous() {
        return delegate().previous();
    }

    @Override
    public int previousIndex() {
        return delegate().previousIndex();
    }

    @Override
    public void set(@ParametricNullness E element) {
        delegate().set(element);
    }
}
