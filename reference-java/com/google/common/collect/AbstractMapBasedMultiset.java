package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.microsoft.codepush.react.CodePushConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractMapBasedMultiset<E> extends AbstractMultiset<E> implements Serializable {
    private static final long serialVersionUID = 0;
    transient ObjectCountHashMap<E> backingMap;
    transient long size;

    abstract ObjectCountHashMap<E> newBackingMap(int distinctElements);

    AbstractMapBasedMultiset(int distinctElements) {
        this.backingMap = newBackingMap(distinctElements);
    }

    @Override
    public final int count(@CheckForNull Object element) {
        return this.backingMap.get(element);
    }

    @Override
    public final int add(@ParametricNullness E element, int occurrences) {
        if (occurrences == 0) {
            return count(element);
        }
        Preconditions.checkArgument(occurrences > 0, "occurrences cannot be negative: %s", occurrences);
        int iIndexOf = this.backingMap.indexOf(element);
        if (iIndexOf == -1) {
            this.backingMap.put(element, occurrences);
            this.size += (long) occurrences;
            return 0;
        }
        int value = this.backingMap.getValue(iIndexOf);
        long j = occurrences;
        long j2 = ((long) value) + j;
        Preconditions.checkArgument(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.backingMap.setValue(iIndexOf, (int) j2);
        this.size += j;
        return value;
    }

    @Override
    public final int remove(@CheckForNull Object element, int occurrences) {
        if (occurrences == 0) {
            return count(element);
        }
        Preconditions.checkArgument(occurrences > 0, "occurrences cannot be negative: %s", occurrences);
        int iIndexOf = this.backingMap.indexOf(element);
        if (iIndexOf == -1) {
            return 0;
        }
        int value = this.backingMap.getValue(iIndexOf);
        if (value > occurrences) {
            this.backingMap.setValue(iIndexOf, value - occurrences);
        } else {
            this.backingMap.removeEntry(iIndexOf);
            occurrences = value;
        }
        this.size -= (long) occurrences;
        return value;
    }

    @Override
    public final int setCount(@ParametricNullness E element, int count) {
        CollectPreconditions.checkNonnegative(count, CodePushConstants.LATEST_ROLLBACK_COUNT_KEY);
        ObjectCountHashMap<E> objectCountHashMap = this.backingMap;
        int iRemove = count == 0 ? objectCountHashMap.remove(element) : objectCountHashMap.put(element, count);
        this.size += (long) (count - iRemove);
        return iRemove;
    }

    @Override
    public final boolean setCount(@ParametricNullness E element, int oldCount, int newCount) {
        CollectPreconditions.checkNonnegative(oldCount, "oldCount");
        CollectPreconditions.checkNonnegative(newCount, "newCount");
        int iIndexOf = this.backingMap.indexOf(element);
        if (iIndexOf == -1) {
            if (oldCount != 0) {
                return false;
            }
            if (newCount > 0) {
                this.backingMap.put(element, newCount);
                this.size += (long) newCount;
            }
            return true;
        }
        if (this.backingMap.getValue(iIndexOf) != oldCount) {
            return false;
        }
        if (newCount == 0) {
            this.backingMap.removeEntry(iIndexOf);
            this.size -= (long) oldCount;
        } else {
            this.backingMap.setValue(iIndexOf, newCount);
            this.size += (long) (newCount - oldCount);
        }
        return true;
    }

    @Override
    public final void clear() {
        this.backingMap.clear();
        this.size = 0L;
    }

    abstract class Itr<T> implements Iterator<T> {
        int entryIndex;
        int expectedModCount;
        int toRemove = -1;

        @ParametricNullness
        abstract T result(int entryIndex);

        Itr() {
            this.entryIndex = AbstractMapBasedMultiset.this.backingMap.firstIndex();
            this.expectedModCount = AbstractMapBasedMultiset.this.backingMap.modCount;
        }

        private void checkForConcurrentModification() {
            if (AbstractMapBasedMultiset.this.backingMap.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public boolean hasNext() {
            checkForConcurrentModification();
            return this.entryIndex >= 0;
        }

        @Override
        @ParametricNullness
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tResult = result(this.entryIndex);
            this.toRemove = this.entryIndex;
            this.entryIndex = AbstractMapBasedMultiset.this.backingMap.nextIndex(this.entryIndex);
            return tResult;
        }

        @Override
        public void remove() {
            checkForConcurrentModification();
            CollectPreconditions.checkRemove(this.toRemove != -1);
            AbstractMapBasedMultiset.this.size -= (long) AbstractMapBasedMultiset.this.backingMap.removeEntry(this.toRemove);
            this.entryIndex = AbstractMapBasedMultiset.this.backingMap.nextIndexAfterRemove(this.entryIndex, this.toRemove);
            this.toRemove = -1;
            this.expectedModCount = AbstractMapBasedMultiset.this.backingMap.modCount;
        }
    }

    @Override
    final Iterator<E> elementIterator() {
        return new AbstractMapBasedMultiset<E>.Itr<E>() {
            @Override
            @ParametricNullness
            E result(int entryIndex) {
                return AbstractMapBasedMultiset.this.backingMap.getKey(entryIndex);
            }
        };
    }

    @Override
    final Iterator<Multiset.Entry<E>> entryIterator() {
        return new AbstractMapBasedMultiset<E>.Itr<Multiset.Entry<E>>() {
            @Override
            public Multiset.Entry<E> result(int entryIndex) {
                return AbstractMapBasedMultiset.this.backingMap.getEntry(entryIndex);
            }
        };
    }

    void addTo(Multiset<? super E> multiset) {
        Preconditions.checkNotNull(multiset);
        int iFirstIndex = this.backingMap.firstIndex();
        while (iFirstIndex >= 0) {
            multiset.add(this.backingMap.getKey(iFirstIndex), this.backingMap.getValue(iFirstIndex));
            iFirstIndex = this.backingMap.nextIndex(iFirstIndex);
        }
    }

    @Override
    final int distinctElements() {
        return this.backingMap.size();
    }

    @Override
    public final Iterator<E> iterator() {
        return Multisets.iteratorImpl(this);
    }

    @Override
    public final int size() {
        return Ints.saturatedCast(this.size);
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        Serialization.writeMultiset(this, stream);
    }

    private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
        stream.defaultReadObject();
        int count = Serialization.readCount(stream);
        this.backingMap = newBackingMap(3);
        Serialization.populateMultiset(this, stream, count);
    }
}
