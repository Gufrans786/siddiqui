package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class RegularImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    static final RegularImmutableSortedSet<Comparable> NATURAL_EMPTY_SET = new RegularImmutableSortedSet<>(ImmutableList.of(), Ordering.natural());
    final transient ImmutableList<E> elements;

    RegularImmutableSortedSet(ImmutableList<E> elements, Comparator<? super E> comparator) {
        super(comparator);
        this.elements = elements;
    }

    @Override
    @CheckForNull
    Object[] internalArray() {
        return this.elements.internalArray();
    }

    @Override
    int internalArrayStart() {
        return this.elements.internalArrayStart();
    }

    @Override
    int internalArrayEnd() {
        return this.elements.internalArrayEnd();
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return this.elements.iterator();
    }

    @Override
    public UnmodifiableIterator<E> descendingIterator() {
        return this.elements.reverse().iterator();
    }

    @Override
    public int size() {
        return this.elements.size();
    }

    @Override
    public boolean contains(@CheckForNull Object o) {
        if (o != null) {
            try {
                if (unsafeBinarySearch(o) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection<?> targets) {
        if (targets instanceof Multiset) {
            targets = ((Multiset) targets).elementSet();
        }
        if (!SortedIterables.hasSameComparator(comparator(), targets) || targets.size() <= 1) {
            return super.containsAll(targets);
        }
        UnmodifiableIterator<E> it = iterator();
        Iterator<?> it2 = targets.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        E next2 = it.next();
        while (true) {
            try {
                int iUnsafeCompare = unsafeCompare(next2, next);
                if (iUnsafeCompare < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (iUnsafeCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iUnsafeCompare > 0) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
    }

    private int unsafeBinarySearch(Object key) throws ClassCastException {
        return Collections.binarySearch(this.elements, key, unsafeComparator());
    }

    @Override
    boolean isPartialView() {
        return this.elements.isPartialView();
    }

    @Override
    int copyIntoArray(Object[] dst, int offset) {
        return this.elements.copyIntoArray(dst, offset);
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Set)) {
            return false;
        }
        Set set = (Set) object;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (SortedIterables.hasSameComparator(this.comparator, set)) {
            Iterator<E> it = set.iterator();
            try {
                UnmodifiableIterator<E> it2 = iterator();
                while (it2.hasNext()) {
                    E next = it2.next();
                    E next2 = it.next();
                    if (next2 == null || unsafeCompare(next, next2) != 0) {
                        return false;
                    }
                }
                return true;
            } catch (ClassCastException | NoSuchElementException unused) {
                return false;
            }
        }
        return containsAll(set);
    }

    @Override
    public E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.elements.get(0);
    }

    @Override
    public E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.elements.get(size() - 1);
    }

    @Override
    @CheckForNull
    public E lower(E element) {
        int iHeadIndex = headIndex(element, false) - 1;
        if (iHeadIndex == -1) {
            return null;
        }
        return this.elements.get(iHeadIndex);
    }

    @Override
    @CheckForNull
    public E floor(E element) {
        int iHeadIndex = headIndex(element, true) - 1;
        if (iHeadIndex == -1) {
            return null;
        }
        return this.elements.get(iHeadIndex);
    }

    @Override
    @CheckForNull
    public E ceiling(E element) {
        int iTailIndex = tailIndex(element, true);
        if (iTailIndex == size()) {
            return null;
        }
        return this.elements.get(iTailIndex);
    }

    @Override
    @CheckForNull
    public E higher(E element) {
        int iTailIndex = tailIndex(element, false);
        if (iTailIndex == size()) {
            return null;
        }
        return this.elements.get(iTailIndex);
    }

    @Override
    ImmutableSortedSet<E> headSetImpl(E toElement, boolean inclusive) {
        return getSubSet(0, headIndex(toElement, inclusive));
    }

    int headIndex(E toElement, boolean inclusive) {
        int iBinarySearch = Collections.binarySearch(this.elements, Preconditions.checkNotNull(toElement), comparator());
        if (iBinarySearch >= 0) {
            return inclusive ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    @Override
    ImmutableSortedSet<E> subSetImpl(E fromElement, boolean fromInclusive, E toElement, boolean toInclusive) {
        return tailSetImpl(fromElement, fromInclusive).headSetImpl(toElement, toInclusive);
    }

    @Override
    ImmutableSortedSet<E> tailSetImpl(E fromElement, boolean inclusive) {
        return getSubSet(tailIndex(fromElement, inclusive), size());
    }

    int tailIndex(E fromElement, boolean inclusive) {
        int iBinarySearch = Collections.binarySearch(this.elements, Preconditions.checkNotNull(fromElement), comparator());
        if (iBinarySearch >= 0) {
            return inclusive ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }

    Comparator<Object> unsafeComparator() {
        return this.comparator;
    }

    RegularImmutableSortedSet<E> getSubSet(int newFromIndex, int newToIndex) {
        if (newFromIndex == 0 && newToIndex == size()) {
            return this;
        }
        if (newFromIndex < newToIndex) {
            return new RegularImmutableSortedSet<>(this.elements.subList(newFromIndex, newToIndex), this.comparator);
        }
        return emptySet(this.comparator);
    }

    @Override
    int indexOf(@CheckForNull Object target) {
        if (target == null) {
            return -1;
        }
        try {
            int iBinarySearch = Collections.binarySearch(this.elements, target, unsafeComparator());
            if (iBinarySearch >= 0) {
                return iBinarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
        }
    }

    @Override
    public ImmutableList<E> asList() {
        return this.elements;
    }

    @Override
    ImmutableSortedSet<E> createDescendingSet() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(this.comparator);
        if (isEmpty()) {
            return emptySet(comparatorReverseOrder);
        }
        return new RegularImmutableSortedSet(this.elements.reverse(), comparatorReverseOrder);
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
