package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingSortedMultiset<E> extends ForwardingMultiset<E> implements SortedMultiset<E> {
    @Override
    public abstract SortedMultiset<E> delegate();

    protected ForwardingSortedMultiset() {
    }

    @Override
    public NavigableSet<E> elementSet() {
        return delegate().elementSet();
    }

    protected class StandardElementSet extends SortedMultisets.NavigableElementSet<E> {
        public StandardElementSet() {
            super(ForwardingSortedMultiset.this);
        }
    }

    @Override
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override
    public SortedMultiset<E> descendingMultiset() {
        return delegate().descendingMultiset();
    }

    protected abstract class StandardDescendingMultiset extends DescendingMultiset<E> {
        public StandardDescendingMultiset() {
        }

        @Override
        SortedMultiset<E> forwardMultiset() {
            return ForwardingSortedMultiset.this;
        }
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        return delegate().firstEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardFirstEntry() {
        Iterator<Multiset.Entry<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        return Multisets.immutableEntry(next.getElement(), next.getCount());
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        return delegate().lastEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardLastEntry() {
        Iterator<Multiset.Entry<E>> it = descendingMultiset().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        return Multisets.immutableEntry(next.getElement(), next.getCount());
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> pollFirstEntry() {
        return delegate().pollFirstEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardPollFirstEntry() {
        Iterator<Multiset.Entry<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        Multiset.Entry<E> entryImmutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        it.remove();
        return entryImmutableEntry;
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> pollLastEntry() {
        return delegate().pollLastEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardPollLastEntry() {
        Iterator<Multiset.Entry<E>> it = descendingMultiset().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        Multiset.Entry<E> entryImmutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        it.remove();
        return entryImmutableEntry;
    }

    @Override
    public SortedMultiset<E> headMultiset(@ParametricNullness E upperBound, BoundType boundType) {
        return delegate().headMultiset(upperBound, boundType);
    }

    @Override
    public SortedMultiset<E> subMultiset(@ParametricNullness E lowerBound, BoundType lowerBoundType, @ParametricNullness E upperBound, BoundType upperBoundType) {
        return delegate().subMultiset(lowerBound, lowerBoundType, upperBound, upperBoundType);
    }

    protected SortedMultiset<E> standardSubMultiset(@ParametricNullness E lowerBound, BoundType lowerBoundType, @ParametricNullness E upperBound, BoundType upperBoundType) {
        return tailMultiset(lowerBound, lowerBoundType).headMultiset(upperBound, upperBoundType);
    }

    @Override
    public SortedMultiset<E> tailMultiset(@ParametricNullness E lowerBound, BoundType boundType) {
        return delegate().tailMultiset(lowerBound, boundType);
    }
}
