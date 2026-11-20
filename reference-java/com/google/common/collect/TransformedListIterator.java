package com.google.common.collect;

import java.util.ListIterator;

@ElementTypesAreNonnullByDefault
abstract class TransformedListIterator<F, T> extends TransformedIterator<F, T> implements ListIterator<T> {
    TransformedListIterator(ListIterator<? extends F> backingIterator) {
        super(backingIterator);
    }

    private ListIterator<? extends F> backingIterator() {
        return (ListIterator) this.backingIterator;
    }

    @Override
    public final boolean hasPrevious() {
        return backingIterator().hasPrevious();
    }

    @Override
    @ParametricNullness
    public final T previous() {
        return transform(backingIterator().previous());
    }

    @Override
    public final int nextIndex() {
        return backingIterator().nextIndex();
    }

    @Override
    public final int previousIndex() {
        return backingIterator().previousIndex();
    }

    public void set(@ParametricNullness T element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void add(@ParametricNullness T element) {
        throw new UnsupportedOperationException();
    }
}
