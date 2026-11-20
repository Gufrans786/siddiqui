package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class SortedMultisets {
    private SortedMultisets() {
    }

    static class ElementSet<E> extends Multisets.ElementSet<E> implements SortedSet<E> {
        private final SortedMultiset<E> multiset;

        ElementSet(SortedMultiset<E> multiset) {
            this.multiset = multiset;
        }

        @Override
        public final SortedMultiset<E> multiset() {
            return this.multiset;
        }

        @Override
        public Iterator<E> iterator() {
            return Multisets.elementIterator(multiset().entrySet().iterator());
        }

        @Override
        public Comparator<? super E> comparator() {
            return multiset().comparator();
        }

        @Override
        public SortedSet<E> subSet(@ParametricNullness E fromElement, @ParametricNullness E toElement) {
            return multiset().subMultiset(fromElement, BoundType.CLOSED, toElement, BoundType.OPEN).elementSet();
        }

        @Override
        public SortedSet<E> headSet(@ParametricNullness E toElement) {
            return multiset().headMultiset(toElement, BoundType.OPEN).elementSet();
        }

        @Override
        public SortedSet<E> tailSet(@ParametricNullness E fromElement) {
            return multiset().tailMultiset(fromElement, BoundType.CLOSED).elementSet();
        }

        @Override
        @ParametricNullness
        public E first() {
            return (E) SortedMultisets.getElementOrThrow(multiset().firstEntry());
        }

        @Override
        @ParametricNullness
        public E last() {
            return (E) SortedMultisets.getElementOrThrow(multiset().lastEntry());
        }
    }

    static class NavigableElementSet<E> extends ElementSet<E> implements NavigableSet<E> {
        NavigableElementSet(SortedMultiset<E> multiset) {
            super(multiset);
        }

        @Override
        @CheckForNull
        public E lower(@ParametricNullness E e) {
            return (E) SortedMultisets.getElementOrNull(multiset().headMultiset(e, BoundType.OPEN).lastEntry());
        }

        @Override
        @CheckForNull
        public E floor(@ParametricNullness E e) {
            return (E) SortedMultisets.getElementOrNull(multiset().headMultiset(e, BoundType.CLOSED).lastEntry());
        }

        @Override
        @CheckForNull
        public E ceiling(@ParametricNullness E e) {
            return (E) SortedMultisets.getElementOrNull(multiset().tailMultiset(e, BoundType.CLOSED).firstEntry());
        }

        @Override
        @CheckForNull
        public E higher(@ParametricNullness E e) {
            return (E) SortedMultisets.getElementOrNull(multiset().tailMultiset(e, BoundType.OPEN).firstEntry());
        }

        @Override
        public NavigableSet<E> descendingSet() {
            return new NavigableElementSet(multiset().descendingMultiset());
        }

        @Override
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        @CheckForNull
        public E pollFirst() {
            return (E) SortedMultisets.getElementOrNull(multiset().pollFirstEntry());
        }

        @Override
        @CheckForNull
        public E pollLast() {
            return (E) SortedMultisets.getElementOrNull(multiset().pollLastEntry());
        }

        @Override
        public NavigableSet<E> subSet(@ParametricNullness E fromElement, boolean fromInclusive, @ParametricNullness E toElement, boolean toInclusive) {
            return new NavigableElementSet(multiset().subMultiset(fromElement, BoundType.forBoolean(fromInclusive), toElement, BoundType.forBoolean(toInclusive)));
        }

        @Override
        public NavigableSet<E> headSet(@ParametricNullness E toElement, boolean inclusive) {
            return new NavigableElementSet(multiset().headMultiset(toElement, BoundType.forBoolean(inclusive)));
        }

        @Override
        public NavigableSet<E> tailSet(@ParametricNullness E fromElement, boolean inclusive) {
            return new NavigableElementSet(multiset().tailMultiset(fromElement, BoundType.forBoolean(inclusive)));
        }
    }

    public static <E> E getElementOrThrow(@CheckForNull Multiset.Entry<E> entry) {
        if (entry == null) {
            throw new NoSuchElementException();
        }
        return entry.getElement();
    }

    @CheckForNull
    public static <E> E getElementOrNull(@CheckForNull Multiset.Entry<E> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getElement();
    }
}
