package com.google.common.collect;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E> {
    @Override
    public abstract NavigableSet<E> delegate();

    protected ForwardingNavigableSet() {
    }

    @Override
    @CheckForNull
    public E lower(@ParametricNullness E e) {
        return delegate().lower(e);
    }

    @CheckForNull
    protected E standardLower(@ParametricNullness E e) {
        return (E) Iterators.getNext(headSet(e, false).descendingIterator(), null);
    }

    @Override
    @CheckForNull
    public E floor(@ParametricNullness E e) {
        return delegate().floor(e);
    }

    @CheckForNull
    protected E standardFloor(@ParametricNullness E e) {
        return (E) Iterators.getNext(headSet(e, true).descendingIterator(), null);
    }

    @Override
    @CheckForNull
    public E ceiling(@ParametricNullness E e) {
        return delegate().ceiling(e);
    }

    @CheckForNull
    protected E standardCeiling(@ParametricNullness E e) {
        return (E) Iterators.getNext(tailSet(e, true).iterator(), null);
    }

    @Override
    @CheckForNull
    public E higher(@ParametricNullness E e) {
        return delegate().higher(e);
    }

    @CheckForNull
    protected E standardHigher(@ParametricNullness E e) {
        return (E) Iterators.getNext(tailSet(e, false).iterator(), null);
    }

    @Override
    @CheckForNull
    public E pollFirst() {
        return delegate().pollFirst();
    }

    @CheckForNull
    protected E standardPollFirst() {
        return (E) Iterators.pollNext(iterator());
    }

    @Override
    @CheckForNull
    public E pollLast() {
        return delegate().pollLast();
    }

    @CheckForNull
    protected E standardPollLast() {
        return (E) Iterators.pollNext(descendingIterator());
    }

    @ParametricNullness
    protected E standardFirst() {
        return iterator().next();
    }

    @ParametricNullness
    protected E standardLast() {
        return descendingIterator().next();
    }

    @Override
    public NavigableSet<E> descendingSet() {
        return delegate().descendingSet();
    }

    protected class StandardDescendingSet extends Sets.DescendingSet<E> {
        public StandardDescendingSet() {
            super(ForwardingNavigableSet.this);
        }
    }

    @Override
    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    @Override
    public NavigableSet<E> subSet(@ParametricNullness E fromElement, boolean fromInclusive, @ParametricNullness E toElement, boolean toInclusive) {
        return delegate().subSet(fromElement, fromInclusive, toElement, toInclusive);
    }

    protected NavigableSet<E> standardSubSet(@ParametricNullness E fromElement, boolean fromInclusive, @ParametricNullness E toElement, boolean toInclusive) {
        return tailSet(fromElement, fromInclusive).headSet(toElement, toInclusive);
    }

    @Override
    protected SortedSet<E> standardSubSet(@ParametricNullness E fromElement, @ParametricNullness E toElement) {
        return subSet(fromElement, true, toElement, false);
    }

    @Override
    public NavigableSet<E> headSet(@ParametricNullness E toElement, boolean inclusive) {
        return delegate().headSet(toElement, inclusive);
    }

    protected SortedSet<E> standardHeadSet(@ParametricNullness E toElement) {
        return headSet(toElement, false);
    }

    @Override
    public NavigableSet<E> tailSet(@ParametricNullness E fromElement, boolean inclusive) {
        return delegate().tailSet(fromElement, inclusive);
    }

    protected SortedSet<E> standardTailSet(@ParametricNullness E fromElement) {
        return tailSet(fromElement, true);
    }
}
