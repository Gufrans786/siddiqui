package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;
import okhttp3.HttpUrl;

@ElementTypesAreNonnullByDefault
final class EmptyContiguousSet<C extends Comparable> extends ContiguousSet<C> {
    @Override
    public boolean contains(@CheckForNull Object object) {
        return false;
    }

    @Override
    public int hashCode() {
        return 0;
    }

    @Override
    public ContiguousSet<C> headSetImpl(C toElement, boolean inclusive) {
        return this;
    }

    @Override
    int indexOf(@CheckForNull Object target) {
        return -1;
    }

    @Override
    public ContiguousSet<C> intersection(ContiguousSet<C> other) {
        return this;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    boolean isHashCodeFast() {
        return true;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public ContiguousSet<C> subSetImpl(C fromElement, boolean fromInclusive, C toElement, boolean toInclusive) {
        return this;
    }

    @Override
    public ContiguousSet<C> tailSetImpl(C fromElement, boolean fromInclusive) {
        return this;
    }

    EmptyContiguousSet(DiscreteDomain<C> domain) {
        super(domain);
    }

    @Override
    public C first() {
        throw new NoSuchElementException();
    }

    @Override
    public C last() {
        throw new NoSuchElementException();
    }

    @Override
    public Range<C> range() {
        throw new NoSuchElementException();
    }

    @Override
    public Range<C> range(BoundType lowerBoundType, BoundType upperBoundType) {
        throw new NoSuchElementException();
    }

    @Override
    public UnmodifiableIterator<C> iterator() {
        return Iterators.emptyIterator();
    }

    @Override
    public UnmodifiableIterator<C> descendingIterator() {
        return Iterators.emptyIterator();
    }

    @Override
    public ImmutableList<C> asList() {
        return ImmutableList.of();
    }

    @Override
    public String toString() {
        return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        if (object instanceof Set) {
            return ((Set) object).isEmpty();
        }
        return false;
    }

    private static final class SerializedForm<C extends Comparable> implements Serializable {
        private static final long serialVersionUID = 0;
        private final DiscreteDomain<C> domain;

        private SerializedForm(DiscreteDomain<C> domain) {
            this.domain = domain;
        }

        private Object readResolve() {
            return new EmptyContiguousSet(this.domain);
        }
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this.domain);
    }

    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override
    ImmutableSortedSet<C> createDescendingSet() {
        return ImmutableSortedSet.emptySet(Ordering.natural().reverse());
    }
}
