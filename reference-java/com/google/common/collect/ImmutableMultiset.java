package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ImmutableMultiset<E> extends ImmutableMultisetGwtSerializationDependencies<E> implements Multiset<E> {
    private static final long serialVersionUID = 912559;

    @CheckForNull
    @LazyInit
    private transient ImmutableList<E> asList;

    @CheckForNull
    @LazyInit
    private transient ImmutableSet<Multiset.Entry<E>> entrySet;

    static int lambda$toImmutableMultiset$0(Object obj) {
        return 1;
    }

    @Override
    public abstract ImmutableSet<E> elementSet();

    abstract Multiset.Entry<E> getEntry(int index);

    @Override
    abstract Object writeReplace();

    public static <E> Collector<E, ?, ImmutableMultiset<E>> toImmutableMultiset() {
        return CollectCollectors.toImmutableMultiset(Function.identity(), new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ImmutableMultiset.lambda$toImmutableMultiset$0(obj);
            }
        });
    }

    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> toImmutableMultiset(Function<? super T, ? extends E> elementFunction, ToIntFunction<? super T> countFunction) {
        return CollectCollectors.toImmutableMultiset(elementFunction, countFunction);
    }

    public static <E> ImmutableMultiset<E> of() {
        return RegularImmutableMultiset.EMPTY;
    }

    public static <E> ImmutableMultiset<E> of(E e1) {
        return copyFromElements(e1);
    }

    public static <E> ImmutableMultiset<E> of(E e1, E e2) {
        return copyFromElements(e1, e2);
    }

    public static <E> ImmutableMultiset<E> of(E e1, E e2, E e3) {
        return copyFromElements(e1, e2, e3);
    }

    public static <E> ImmutableMultiset<E> of(E e1, E e2, E e3, E e4) {
        return copyFromElements(e1, e2, e3, e4);
    }

    public static <E> ImmutableMultiset<E> of(E e1, E e2, E e3, E e4, E e5) {
        return copyFromElements(e1, e2, e3, e4, e5);
    }

    public static <E> ImmutableMultiset<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E... others) {
        return new Builder().add((Object) e1).add((Object) e2).add((Object) e3).add((Object) e4).add((Object) e5).add((Object) e6).add((Object[]) others).build();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] elements) {
        return copyFromElements(elements);
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> elements) {
        if (elements instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) elements;
            if (!immutableMultiset.isPartialView()) {
                return immutableMultiset;
            }
        }
        Builder builder = new Builder(Multisets.inferDistinctElements(elements));
        builder.addAll((Iterable) elements);
        return builder.build();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> elements) {
        return new Builder().addAll((Iterator) elements).build();
    }

    private static <E> ImmutableMultiset<E> copyFromElements(E... elements) {
        return new Builder().add((Object[]) elements).build();
    }

    public static <E> ImmutableMultiset<E> copyFromEntries(Collection<? extends Multiset.Entry<? extends E>> entries) {
        Builder builder = new Builder(entries.size());
        for (Multiset.Entry<? extends E> entry : entries) {
            builder.addCopies(entry.getElement(), entry.getCount());
        }
        return builder.build();
    }

    ImmutableMultiset() {
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        final UnmodifiableIterator<Multiset.Entry<E>> it = entrySet().iterator();
        return new UnmodifiableIterator<E>(this) {

            @CheckForNull
            E element;
            int remaining;
            final ImmutableMultiset this$0;

            {
                this.this$0 = this;
            }

            @Override
            public boolean hasNext() {
                return this.remaining > 0 || it.hasNext();
            }

            @Override
            public E next() {
                if (this.remaining <= 0) {
                    Multiset.Entry entry = (Multiset.Entry) it.next();
                    this.element = (E) entry.getElement();
                    this.remaining = entry.getCount();
                }
                this.remaining--;
                return (E) Objects.requireNonNull(this.element);
            }
        };
    }

    @Override
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListAsList = super.asList();
        this.asList = immutableListAsList;
        return immutableListAsList;
    }

    @Override
    public boolean contains(@CheckForNull Object object) {
        return count(object) > 0;
    }

    @Override
    @Deprecated
    public final int add(E element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final int remove(@CheckForNull Object element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final int setCount(E element, int count) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean setCount(E element, int oldCount, int newCount) {
        throw new UnsupportedOperationException();
    }

    @Override
    int copyIntoArray(Object[] dst, int offset) {
        UnmodifiableIterator<Multiset.Entry<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            Multiset.Entry<E> next = it.next();
            Arrays.fill(dst, offset, next.getCount() + offset, next.getElement());
            offset += next.getCount();
        }
        return offset;
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        return Multisets.equalsImpl(this, object);
    }

    @Override
    public int hashCode() {
        return Sets.hashCodeImpl(entrySet());
    }

    @Override
    public String toString() {
        return entrySet().toString();
    }

    @Override
    public ImmutableSet<Multiset.Entry<E>> entrySet() {
        ImmutableSet<Multiset.Entry<E>> immutableSet = this.entrySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<Multiset.Entry<E>> immutableSetCreateEntrySet = createEntrySet();
        this.entrySet = immutableSetCreateEntrySet;
        return immutableSetCreateEntrySet;
    }

    private ImmutableSet<Multiset.Entry<E>> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new EntrySet();
    }

    private final class EntrySet extends IndexedImmutableSet<Multiset.Entry<E>> {
        private static final long serialVersionUID = 0;

        private EntrySet() {
        }

        @Override
        boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        @Override
        public Multiset.Entry<E> get(int index) {
            return ImmutableMultiset.this.getEntry(index);
        }

        @Override
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        @Override
        public boolean contains(@CheckForNull Object o) {
            if (o instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) o;
                if (entry.getCount() > 0 && ImmutableMultiset.this.count(entry.getElement()) == entry.getCount()) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override
        Object writeReplace() {
            return new EntrySetSerializedForm(ImmutableMultiset.this);
        }

        private void readObject(ObjectInputStream stream) throws InvalidObjectException {
            throw new InvalidObjectException("Use EntrySetSerializedForm");
        }
    }

    static class EntrySetSerializedForm<E> implements Serializable {
        final ImmutableMultiset<E> multiset;

        EntrySetSerializedForm(ImmutableMultiset<E> multiset) {
            this.multiset = multiset;
        }

        Object readResolve() {
            return this.multiset.entrySet();
        }
    }

    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    public static class Builder<E> extends ImmutableCollection.Builder<E> {
        boolean buildInvoked;

        @CheckForNull
        ObjectCountHashMap<E> contents;
        boolean isLinkedHash;

        public Builder() {
            this(4);
        }

        Builder(int estimatedDistinct) {
            this.buildInvoked = false;
            this.isLinkedHash = false;
            this.contents = ObjectCountHashMap.createWithExpectedSize(estimatedDistinct);
        }

        Builder(boolean forSubtype) {
            this.buildInvoked = false;
            this.isLinkedHash = false;
            this.contents = null;
        }

        @Override
        public Builder<E> add(E element) {
            return addCopies(element, 1);
        }

        @Override
        public Builder<E> add(E... elements) {
            super.add((Object[]) elements);
            return this;
        }

        public Builder<E> addCopies(E element, int occurrences) {
            Objects.requireNonNull(this.contents);
            if (occurrences == 0) {
                return this;
            }
            if (this.buildInvoked) {
                this.contents = new ObjectCountHashMap<>(this.contents);
                this.isLinkedHash = false;
            }
            this.buildInvoked = false;
            Preconditions.checkNotNull(element);
            ObjectCountHashMap<E> objectCountHashMap = this.contents;
            objectCountHashMap.put(element, occurrences + objectCountHashMap.get(element));
            return this;
        }

        public Builder<E> setCount(E e, int i) {
            Objects.requireNonNull(this.contents);
            if (i == 0 && !this.isLinkedHash) {
                this.contents = new ObjectCountLinkedHashMap(this.contents);
                this.isLinkedHash = true;
            } else if (this.buildInvoked) {
                this.contents = new ObjectCountHashMap<>(this.contents);
                this.isLinkedHash = false;
            }
            this.buildInvoked = false;
            Preconditions.checkNotNull(e);
            if (i == 0) {
                this.contents.remove(e);
                return this;
            }
            this.contents.put((E) Preconditions.checkNotNull(e), i);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterable<? extends E> elements) {
            Objects.requireNonNull(this.contents);
            if (elements instanceof Multiset) {
                Multiset multisetCast = Multisets.cast(elements);
                ObjectCountHashMap objectCountHashMapTryGetMap = tryGetMap(multisetCast);
                if (objectCountHashMapTryGetMap != null) {
                    ObjectCountHashMap<E> objectCountHashMap = this.contents;
                    objectCountHashMap.ensureCapacity(Math.max(objectCountHashMap.size(), objectCountHashMapTryGetMap.size()));
                    for (int iFirstIndex = objectCountHashMapTryGetMap.firstIndex(); iFirstIndex >= 0; iFirstIndex = objectCountHashMapTryGetMap.nextIndex(iFirstIndex)) {
                        addCopies(objectCountHashMapTryGetMap.getKey(iFirstIndex), objectCountHashMapTryGetMap.getValue(iFirstIndex));
                    }
                } else {
                    Set<Multiset.Entry<E>> setEntrySet = multisetCast.entrySet();
                    ObjectCountHashMap<E> objectCountHashMap2 = this.contents;
                    objectCountHashMap2.ensureCapacity(Math.max(objectCountHashMap2.size(), setEntrySet.size()));
                    for (Multiset.Entry<E> entry : multisetCast.entrySet()) {
                        addCopies(entry.getElement(), entry.getCount());
                    }
                }
                return this;
            }
            super.addAll((Iterable) elements);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterator<? extends E> elements) {
            super.addAll((Iterator) elements);
            return this;
        }

        @CheckForNull
        static <T> ObjectCountHashMap<T> tryGetMap(Iterable<T> iterable) {
            if (iterable instanceof RegularImmutableMultiset) {
                return ((RegularImmutableMultiset) iterable).contents;
            }
            if (iterable instanceof AbstractMapBasedMultiset) {
                return ((AbstractMapBasedMultiset) iterable).backingMap;
            }
            return null;
        }

        @Override
        public ImmutableMultiset<E> build() {
            Objects.requireNonNull(this.contents);
            if (this.contents.size() == 0) {
                return ImmutableMultiset.of();
            }
            if (this.isLinkedHash) {
                this.contents = new ObjectCountHashMap<>(this.contents);
                this.isLinkedHash = false;
            }
            this.buildInvoked = true;
            return new RegularImmutableMultiset(this.contents);
        }
    }
}
