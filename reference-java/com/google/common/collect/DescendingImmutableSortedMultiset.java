package com.google.common.collect;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    private final transient ImmutableSortedMultiset<E> forward;

    DescendingImmutableSortedMultiset(ImmutableSortedMultiset<E> forward) {
        this.forward = forward;
    }

    @Override
    public int count(@CheckForNull Object element) {
        return this.forward.count(element);
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        return this.forward.lastEntry();
    }

    @Override
    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        return this.forward.firstEntry();
    }

    @Override
    public int size() {
        return this.forward.size();
    }

    @Override
    public ImmutableSortedSet<E> elementSet() {
        return this.forward.elementSet().descendingSet();
    }

    @Override
    Multiset.Entry<E> getEntry(int index) {
        return this.forward.entrySet().asList().reverse().get(index);
    }

    @Override
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.forward;
    }

    @Override
    public ImmutableSortedMultiset<E> headMultiset(E upperBound, BoundType boundType) {
        return this.forward.tailMultiset((Object) upperBound, boundType).descendingMultiset();
    }

    @Override
    public ImmutableSortedMultiset<E> tailMultiset(E lowerBound, BoundType boundType) {
        return this.forward.headMultiset((Object) lowerBound, boundType).descendingMultiset();
    }

    @Override
    boolean isPartialView() {
        return this.forward.isPartialView();
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
