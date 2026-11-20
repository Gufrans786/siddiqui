package com.google.common.collect;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class DescendingImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    private final ImmutableSortedSet<E> forward;

    DescendingImmutableSortedSet(ImmutableSortedSet<E> forward) {
        super(Ordering.from(forward.comparator()).reverse());
        this.forward = forward;
    }

    @Override
    public boolean contains(@CheckForNull Object object) {
        return this.forward.contains(object);
    }

    @Override
    public int size() {
        return this.forward.size();
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return this.forward.descendingIterator();
    }

    @Override
    ImmutableSortedSet<E> headSetImpl(E toElement, boolean inclusive) {
        return this.forward.tailSet((Object) toElement, inclusive).descendingSet();
    }

    @Override
    ImmutableSortedSet<E> subSetImpl(E fromElement, boolean fromInclusive, E toElement, boolean toInclusive) {
        return this.forward.subSet((Object) toElement, toInclusive, (Object) fromElement, fromInclusive).descendingSet();
    }

    @Override
    ImmutableSortedSet<E> tailSetImpl(E fromElement, boolean inclusive) {
        return this.forward.headSet((Object) fromElement, inclusive).descendingSet();
    }

    @Override
    public ImmutableSortedSet<E> descendingSet() {
        return this.forward;
    }

    @Override
    public UnmodifiableIterator<E> descendingIterator() {
        return this.forward.iterator();
    }

    @Override
    ImmutableSortedSet<E> createDescendingSet() {
        throw new AssertionError("should never be called");
    }

    @Override
    @CheckForNull
    public E lower(E element) {
        return this.forward.higher(element);
    }

    @Override
    @CheckForNull
    public E floor(E element) {
        return this.forward.ceiling(element);
    }

    @Override
    @CheckForNull
    public E ceiling(E element) {
        return this.forward.floor(element);
    }

    @Override
    @CheckForNull
    public E higher(E element) {
        return this.forward.lower(element);
    }

    @Override
    int indexOf(@CheckForNull Object target) {
        int iIndexOf = this.forward.indexOf(target);
        return iIndexOf == -1 ? iIndexOf : (size() - 1) - iIndexOf;
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
