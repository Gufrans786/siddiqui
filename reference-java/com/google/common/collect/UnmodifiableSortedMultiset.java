package com.google.common.collect;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.Comparator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class UnmodifiableSortedMultiset<E> extends Multisets.UnmodifiableMultiset<E> implements SortedMultiset<E> {
    private static final long serialVersionUID = 0;

    @CheckForNull
    @LazyInit
    private transient UnmodifiableSortedMultiset<E> descendingMultiset;

    UnmodifiableSortedMultiset(SortedMultiset<E> delegate) {
        super(delegate);
    }

    @Override
    public SortedMultiset<E> delegate() {
        return (SortedMultiset) super.delegate();
    }

    @Override
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override
    public NavigableSet<E> createElementSet() {
        return Sets.unmodifiableNavigableSet(delegate().elementSet());
    }

    @Override
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }

    @Override
    public SortedMultiset<E> descendingMultiset() {
        UnmodifiableSortedMultiset<E> unmodifiableSortedMultiset = this.descendingMultiset;
        if (unmodifiableSortedMultiset != null) {
            return unmodifiableSortedMultiset;
        }
        UnmodifiableSortedMultiset<E> unmodifiableSortedMultiset2 = new UnmodifiableSortedMultiset<>(delegate().descendingMultiset());
        unmodifiableSortedMultiset2.descendingMultiset = this;
        this.descendingMultiset = unmodifiableSortedMultiset2;
        return unmodifiableSortedMultiset2;
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        return delegate().firstEntry();
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        return delegate().lastEntry();
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public SortedMultiset<E> headMultiset(@ParametricNullness E upperBound, BoundType boundType) {
        return Multisets.unmodifiableSortedMultiset(delegate().headMultiset(upperBound, boundType));
    }

    @Override
    public SortedMultiset<E> subMultiset(@ParametricNullness E lowerBound, BoundType lowerBoundType, @ParametricNullness E upperBound, BoundType upperBoundType) {
        return Multisets.unmodifiableSortedMultiset(delegate().subMultiset(lowerBound, lowerBoundType, upperBound, upperBoundType));
    }

    @Override
    public SortedMultiset<E> tailMultiset(@ParametricNullness E lowerBound, BoundType boundType) {
        return Multisets.unmodifiableSortedMultiset(delegate().tailMultiset(lowerBound, boundType));
    }
}
