package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.microsoft.codepush.react.CodePushConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public final class ConcurrentHashMultiset<E> extends AbstractMultiset<E> implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient ConcurrentMap<E, AtomicInteger> countMap;

    @Override
    public boolean contains(@CheckForNull Object element) {
        return super.contains(element);
    }

    @Override
    public Set elementSet() {
        return super.elementSet();
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    private static class FieldSettersHolder {
        static final Serialization.FieldSetter<? super ConcurrentHashMultiset<?>> COUNT_MAP_FIELD_SETTER = Serialization.getFieldSetter(ConcurrentHashMultiset.class, "countMap");

        private FieldSettersHolder() {
        }
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> elements) {
        ConcurrentHashMultiset<E> concurrentHashMultisetCreate = create();
        Iterables.addAll(concurrentHashMultisetCreate, elements);
        return concurrentHashMultisetCreate;
    }

    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> countMap) {
        return new ConcurrentHashMultiset<>(countMap);
    }

    ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> countMap) {
        Preconditions.checkArgument(countMap.isEmpty(), "the backing map (%s) must be empty", countMap);
        this.countMap = countMap;
    }

    @Override
    public int count(@CheckForNull Object element) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.safeGet(this.countMap, element);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override
    public int size() {
        Iterator<AtomicInteger> it = this.countMap.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            j += (long) it.next().get();
        }
        return Ints.saturatedCast(j);
    }

    @Override
    public Object[] toArray() {
        return snapshot().toArray();
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) snapshot().toArray(tArr);
    }

    private List<E> snapshot() {
        ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
        for (Multiset.Entry entry : entrySet()) {
            Object element = entry.getElement();
            for (int count = entry.getCount(); count > 0; count--) {
                arrayListNewArrayListWithExpectedSize.add(element);
            }
        }
        return arrayListNewArrayListWithExpectedSize;
    }

    @Override
    public int add(E element, int occurrences) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i;
        AtomicInteger atomicInteger;
        Preconditions.checkNotNull(element);
        if (occurrences == 0) {
            return count(element);
        }
        CollectPreconditions.checkPositive(occurrences, "occurrences");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.safeGet(this.countMap, element);
            if (atomicIntegerPutIfAbsent == null && (atomicIntegerPutIfAbsent = this.countMap.putIfAbsent(element, new AtomicInteger(occurrences))) == null) {
                return 0;
            }
            do {
                i = atomicIntegerPutIfAbsent.get();
                if (i != 0) {
                    try {
                    } catch (ArithmeticException unused) {
                        throw new IllegalArgumentException("Overflow adding " + occurrences + " occurrences to a count of " + i);
                    }
                } else {
                    atomicInteger = new AtomicInteger(occurrences);
                    if (this.countMap.putIfAbsent(element, atomicInteger) == null) {
                        break;
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i, IntMath.checkedAdd(i, occurrences)));
            return i;
        } while (!this.countMap.replace(element, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override
    public int remove(@CheckForNull Object element, int occurrences) {
        int i;
        int iMax;
        if (occurrences == 0) {
            return count(element);
        }
        CollectPreconditions.checkPositive(occurrences, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.safeGet(this.countMap, element);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i = atomicInteger.get();
            if (i == 0) {
                return 0;
            }
            iMax = Math.max(0, i - occurrences);
        } while (!atomicInteger.compareAndSet(i, iMax));
        if (iMax == 0) {
            this.countMap.remove(element, atomicInteger);
        }
        return i;
    }

    public boolean removeExactly(@CheckForNull Object element, int occurrences) {
        int i;
        int i2;
        if (occurrences == 0) {
            return true;
        }
        CollectPreconditions.checkPositive(occurrences, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.safeGet(this.countMap, element);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i = atomicInteger.get();
            if (i < occurrences) {
                return false;
            }
            i2 = i - occurrences;
        } while (!atomicInteger.compareAndSet(i, i2));
        if (i2 == 0) {
            this.countMap.remove(element, atomicInteger);
        }
        return true;
    }

    @Override
    public int setCount(E element, int count) {
        AtomicInteger atomicIntegerPutIfAbsent;
        AtomicInteger atomicInteger;
        Preconditions.checkNotNull(element);
        CollectPreconditions.checkNonnegative(count, CodePushConstants.LATEST_ROLLBACK_COUNT_KEY);
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.safeGet(this.countMap, element);
            if (atomicIntegerPutIfAbsent != null || (count != 0 && (atomicIntegerPutIfAbsent = this.countMap.putIfAbsent(element, new AtomicInteger(count))) != null)) {
                while (true) {
                    int i = atomicIntegerPutIfAbsent.get();
                    if (i == 0) {
                        break;
                    }
                    if (atomicIntegerPutIfAbsent.compareAndSet(i, count)) {
                        if (count == 0) {
                            this.countMap.remove(element, atomicIntegerPutIfAbsent);
                        }
                        return i;
                    }
                }
                if (count != 0) {
                    atomicInteger = new AtomicInteger(count);
                    if (this.countMap.putIfAbsent(element, atomicInteger) == null) {
                        break;
                    }
                } else {
                    return 0;
                }
            } else {
                return 0;
            }
        } while (!this.countMap.replace(element, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override
    public boolean setCount(E element, int expectedOldCount, int newCount) {
        Preconditions.checkNotNull(element);
        CollectPreconditions.checkNonnegative(expectedOldCount, "oldCount");
        CollectPreconditions.checkNonnegative(newCount, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.safeGet(this.countMap, element);
        if (atomicInteger == null) {
            if (expectedOldCount != 0) {
                return false;
            }
            return newCount == 0 || this.countMap.putIfAbsent(element, new AtomicInteger(newCount)) == null;
        }
        int i = atomicInteger.get();
        if (i == expectedOldCount) {
            if (i == 0) {
                if (newCount == 0) {
                    this.countMap.remove(element, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(newCount);
                return this.countMap.putIfAbsent(element, atomicInteger2) == null || this.countMap.replace(element, atomicInteger, atomicInteger2);
            }
            if (atomicInteger.compareAndSet(i, newCount)) {
                if (newCount == 0) {
                    this.countMap.remove(element, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }

    @Override
    Set<E> createElementSet() {
        final Set<E> setKeySet = this.countMap.keySet();
        return new ForwardingSet<E>(this) {
            final ConcurrentHashMultiset this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Set<E> delegate() {
                return setKeySet;
            }

            @Override
            public boolean contains(@CheckForNull Object object) {
                return object != null && Collections2.safeContains(setKeySet, object);
            }

            @Override
            public boolean containsAll(Collection<?> collection) {
                return standardContainsAll(collection);
            }

            @Override
            public boolean remove(@CheckForNull Object object) {
                return object != null && Collections2.safeRemove(setKeySet, object);
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                return standardRemoveAll(c);
            }
        };
    }

    @Override
    Iterator<E> elementIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    @Deprecated
    public Set<Multiset.Entry<E>> createEntrySet() {
        return new EntrySet();
    }

    @Override
    int distinctElements() {
        return this.countMap.size();
    }

    @Override
    public boolean isEmpty() {
        return this.countMap.isEmpty();
    }

    @Override
    Iterator<Multiset.Entry<E>> entryIterator() {
        final AbstractIterator<Multiset.Entry<E>> abstractIterator = new AbstractIterator<Multiset.Entry<E>>() {
            private final Iterator<Map.Entry<E, AtomicInteger>> mapEntries;

            {
                this.mapEntries = ConcurrentHashMultiset.this.countMap.entrySet().iterator();
            }

            @Override
            @CheckForNull
            public Multiset.Entry<E> computeNext() {
                while (this.mapEntries.hasNext()) {
                    Map.Entry<E, AtomicInteger> next = this.mapEntries.next();
                    int i = next.getValue().get();
                    if (i != 0) {
                        return Multisets.immutableEntry(next.getKey(), i);
                    }
                }
                return endOfData();
            }
        };
        return new ForwardingIterator<Multiset.Entry<E>>(this) {

            @CheckForNull
            private Multiset.Entry<E> last;
            final ConcurrentHashMultiset this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Iterator<Multiset.Entry<E>> delegate() {
                return abstractIterator;
            }

            @Override
            public Multiset.Entry<E> next() {
                Multiset.Entry<E> entry = (Multiset.Entry) super.next();
                this.last = entry;
                return entry;
            }

            @Override
            public void remove() {
                Preconditions.checkState(this.last != null, "no calls to next() since the last call to remove()");
                this.this$0.setCount(this.last.getElement(), 0);
                this.last = null;
            }
        };
    }

    @Override
    public Iterator<E> iterator() {
        return Multisets.iteratorImpl(this);
    }

    @Override
    public void clear() {
        this.countMap.clear();
    }

    private class EntrySet extends AbstractMultiset<E>.EntrySet {
        private EntrySet() {
            super();
        }

        @Override
        public ConcurrentHashMultiset<E> multiset() {
            return ConcurrentHashMultiset.this;
        }

        @Override
        public Object[] toArray() {
            return snapshot().toArray();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) snapshot().toArray(tArr);
        }

        private List<Multiset.Entry<E>> snapshot() {
            ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
            Iterators.addAll(arrayListNewArrayListWithExpectedSize, iterator());
            return arrayListNewArrayListWithExpectedSize;
        }
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        stream.writeObject(this.countMap);
    }

    private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
        stream.defaultReadObject();
        FieldSettersHolder.COUNT_MAP_FIELD_SETTER.set(this, (ConcurrentMap) Objects.requireNonNull(stream.readObject()));
    }
}
