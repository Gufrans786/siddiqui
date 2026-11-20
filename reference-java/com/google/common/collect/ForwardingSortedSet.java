package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingSortedSet<E> extends ForwardingSet<E> implements SortedSet<E> {
    @Override
    public abstract SortedSet<E> delegate();

    protected ForwardingSortedSet() {
    }

    @Override
    @CheckForNull
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override
    @ParametricNullness
    public E first() {
        return delegate().first();
    }

    @Override
    public SortedSet<E> headSet(@ParametricNullness E toElement) {
        return delegate().headSet(toElement);
    }

    @Override
    @ParametricNullness
    public E last() {
        return delegate().last();
    }

    @Override
    public SortedSet<E> subSet(@ParametricNullness E fromElement, @ParametricNullness E toElement) {
        return delegate().subSet(fromElement, toElement);
    }

    @Override
    public SortedSet<E> tailSet(@ParametricNullness E fromElement) {
        return delegate().tailSet(fromElement);
    }

    @Override
    protected boolean standardContains(@CheckForNull Object object) {
        try {
            return ForwardingSortedMap.unsafeCompare(comparator(), tailSet(object).first(), object) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
        }
    }

    @Override
    protected boolean standardRemove(@CheckForNull Object object) {
        try {
            Iterator<E> it = tailSet(object).iterator();
            if (it.hasNext()) {
                if (ForwardingSortedMap.unsafeCompare(comparator(), it.next(), object) == 0) {
                    it.remove();
                    return true;
                }
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    protected SortedSet<E> standardSubSet(@ParametricNullness E fromElement, @ParametricNullness E toElement) {
        return tailSet(fromElement).headSet(toElement);
    }
}
