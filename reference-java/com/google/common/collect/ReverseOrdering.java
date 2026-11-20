package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class ReverseOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Ordering<? super T> forwardOrder;

    ReverseOrdering(Ordering<? super T> forwardOrder) {
        this.forwardOrder = (Ordering) Preconditions.checkNotNull(forwardOrder);
    }

    @Override
    public int compare(@ParametricNullness T a, @ParametricNullness T b) {
        return this.forwardOrder.compare(b, a);
    }

    @Override
    public <S extends T> Ordering<S> reverse() {
        return this.forwardOrder;
    }

    @Override
    public <E extends T> E min(@ParametricNullness E e, @ParametricNullness E e2) {
        return (E) this.forwardOrder.max(e, e2);
    }

    @Override
    public <E extends T> E min(@ParametricNullness E e, @ParametricNullness E e2, @ParametricNullness E e3, E... eArr) {
        return (E) this.forwardOrder.max(e, e2, e3, eArr);
    }

    @Override
    public <E extends T> E min(Iterator<E> it) {
        return (E) this.forwardOrder.max(it);
    }

    @Override
    public <E extends T> E min(Iterable<E> iterable) {
        return (E) this.forwardOrder.max(iterable);
    }

    @Override
    public <E extends T> E max(@ParametricNullness E e, @ParametricNullness E e2) {
        return (E) this.forwardOrder.min(e, e2);
    }

    @Override
    public <E extends T> E max(@ParametricNullness E e, @ParametricNullness E e2, @ParametricNullness E e3, E... eArr) {
        return (E) this.forwardOrder.min(e, e2, e3, eArr);
    }

    @Override
    public <E extends T> E max(Iterator<E> it) {
        return (E) this.forwardOrder.min(it);
    }

    @Override
    public <E extends T> E max(Iterable<E> iterable) {
        return (E) this.forwardOrder.min(iterable);
    }

    public int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof ReverseOrdering) {
            return this.forwardOrder.equals(((ReverseOrdering) object).forwardOrder);
        }
        return false;
    }

    public String toString() {
        return this.forwardOrder + ".reverse()";
    }
}
