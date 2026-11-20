package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Iterator;

@ElementTypesAreNonnullByDefault
abstract class TransformedIterator<F, T> implements Iterator<T> {
    final Iterator<? extends F> backingIterator;

    @ParametricNullness
    abstract T transform(@ParametricNullness F from);

    TransformedIterator(Iterator<? extends F> backingIterator) {
        this.backingIterator = (Iterator) Preconditions.checkNotNull(backingIterator);
    }

    @Override
    public final boolean hasNext() {
        return this.backingIterator.hasNext();
    }

    @Override
    @ParametricNullness
    public final T next() {
        return transform(this.backingIterator.next());
    }

    @Override
    public final void remove() {
        this.backingIterator.remove();
    }
}
