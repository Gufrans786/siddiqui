package com.google.common.collect;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractMultiset<E> extends AbstractCollection<E> implements Multiset<E> {

    @CheckForNull
    @LazyInit
    private transient Set<E> elementSet;

    @CheckForNull
    @LazyInit
    private transient Set<Multiset.Entry<E>> entrySet;

    @Override
    public abstract void clear();

    abstract int distinctElements();

    abstract Iterator<E> elementIterator();

    abstract Iterator<Multiset.Entry<E>> entryIterator();

    AbstractMultiset() {
    }

    @Override
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override
    public boolean contains(@CheckForNull Object element) {
        return count(element) > 0;
    }

    @Override
    public final boolean add(@ParametricNullness E element) {
        add(element, 1);
        return true;
    }

    public int add(@ParametricNullness E element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean remove(@CheckForNull Object element) {
        return remove(element, 1) > 0;
    }

    public int remove(@CheckForNull Object element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    public int setCount(@ParametricNullness E element, int count) {
        return Multisets.setCountImpl(this, element, count);
    }

    public boolean setCount(@ParametricNullness E element, int oldCount, int newCount) {
        return Multisets.setCountImpl(this, element, oldCount, newCount);
    }

    @Override
    public final boolean addAll(Collection<? extends E> elementsToAdd) {
        return Multisets.addAllImpl(this, elementsToAdd);
    }

    @Override
    public final boolean removeAll(Collection<?> elementsToRemove) {
        return Multisets.removeAllImpl(this, elementsToRemove);
    }

    @Override
    public final boolean retainAll(Collection<?> elementsToRetain) {
        return Multisets.retainAllImpl(this, elementsToRetain);
    }

    @Override
    public Set<E> elementSet() {
        Set<E> set = this.elementSet;
        if (set != null) {
            return set;
        }
        Set<E> setCreateElementSet = createElementSet();
        this.elementSet = setCreateElementSet;
        return setCreateElementSet;
    }

    Set<E> createElementSet() {
        return new ElementSet();
    }

    class ElementSet extends Multisets.ElementSet<E> {
        ElementSet() {
        }

        @Override
        Multiset<E> multiset() {
            return AbstractMultiset.this;
        }

        @Override
        public Iterator<E> iterator() {
            return AbstractMultiset.this.elementIterator();
        }
    }

    @Override
    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        Set<Multiset.Entry<E>> setCreateEntrySet = createEntrySet();
        this.entrySet = setCreateEntrySet;
        return setCreateEntrySet;
    }

    class EntrySet extends Multisets.EntrySet<E> {
        EntrySet() {
        }

        @Override
        Multiset<E> multiset() {
            return AbstractMultiset.this;
        }

        @Override
        public Iterator<Multiset.Entry<E>> iterator() {
            return AbstractMultiset.this.entryIterator();
        }

        @Override
        public int size() {
            return AbstractMultiset.this.distinctElements();
        }
    }

    Set<Multiset.Entry<E>> createEntrySet() {
        return new EntrySet();
    }

    @Override
    public final boolean equals(@CheckForNull Object object) {
        return Multisets.equalsImpl(this, object);
    }

    @Override
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override
    public final String toString() {
        return entrySet().toString();
    }
}
