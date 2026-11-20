package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.DoNotMock;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ImmutableMultimap<K, V> extends BaseImmutableMultimap<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
    final transient int size;

    @Override
    public abstract ImmutableCollection<V> get(K key);

    public abstract ImmutableMultimap<V, K> inverse();

    @Override
    public boolean containsEntry(@CheckForNull Object key, @CheckForNull Object value) {
        return super.containsEntry(key, value);
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        return super.equals(object);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k1, V v1) {
        return ImmutableListMultimap.of((Object) k1, (Object) v1);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k1, V v1, K k2, V v2) {
        return ImmutableListMultimap.of((Object) k1, (Object) v1, (Object) k2, (Object) v2);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3) {
        return ImmutableListMultimap.of((Object) k1, (Object) v1, (Object) k2, (Object) v2, (Object) k3, (Object) v3);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4) {
        return ImmutableListMultimap.of((Object) k1, (Object) v1, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return ImmutableListMultimap.of((Object) k1, (Object) v1, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4, (Object) k5, (Object) v5);
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    public static <K, V> Builder<K, V> builderWithExpectedKeys(int expectedKeys) {
        CollectPreconditions.checkNonnegative(expectedKeys, "expectedKeys");
        return new Builder<>(expectedKeys);
    }

    @DoNotMock
    public static class Builder<K, V> {

        @CheckForNull
        Map<K, ImmutableCollection.Builder<V>> builderMap;
        int expectedValuesPerKey = 4;

        @CheckForNull
        Comparator<? super K> keyComparator;

        @CheckForNull
        Comparator<? super V> valueComparator;

        public Builder() {
        }

        Builder(int expectedKeys) {
            if (expectedKeys > 0) {
                this.builderMap = Platform.preservesInsertionOrderOnPutsMapWithExpectedSize(expectedKeys);
            }
        }

        Map<K, ImmutableCollection.Builder<V>> ensureBuilderMapNonNull() {
            Map<K, ImmutableCollection.Builder<V>> map = this.builderMap;
            if (map != null) {
                return map;
            }
            Map<K, ImmutableCollection.Builder<V>> mapPreservesInsertionOrderOnPutsMap = Platform.preservesInsertionOrderOnPutsMap();
            this.builderMap = mapPreservesInsertionOrderOnPutsMap;
            return mapPreservesInsertionOrderOnPutsMap;
        }

        ImmutableCollection.Builder<V> newValueCollectionBuilderWithExpectedSize(int expectedSize) {
            return ImmutableList.builderWithExpectedSize(expectedSize);
        }

        public Builder<K, V> expectedValuesPerKey(int expectedValuesPerKey) {
            CollectPreconditions.checkNonnegative(expectedValuesPerKey, "expectedValuesPerKey");
            this.expectedValuesPerKey = Math.max(expectedValuesPerKey, 1);
            return this;
        }

        int expectedValueCollectionSize(int defaultExpectedValues, Iterable<?> values) {
            return values instanceof Collection ? Math.max(defaultExpectedValues, ((Collection) values).size()) : defaultExpectedValues;
        }

        public Builder<K, V> put(K key, V value) {
            CollectPreconditions.checkEntryNotNull(key, value);
            ImmutableCollection.Builder<V> builderNewValueCollectionBuilderWithExpectedSize = ensureBuilderMapNonNull().get(key);
            if (builderNewValueCollectionBuilderWithExpectedSize == null) {
                builderNewValueCollectionBuilderWithExpectedSize = newValueCollectionBuilderWithExpectedSize(this.expectedValuesPerKey);
                ensureBuilderMapNonNull().put(key, builderNewValueCollectionBuilderWithExpectedSize);
            }
            builderNewValueCollectionBuilderWithExpectedSize.add(value);
            return this;
        }

        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            return put(entry.getKey(), entry.getValue());
        }

        public Builder<K, V> putAll(Iterable<? extends Map.Entry<? extends K, ? extends V>> entries) {
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = entries.iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        public Builder<K, V> putAll(K key, Iterable<? extends V> values) {
            if (key == null) {
                throw new NullPointerException("null key in entry: null=" + Iterables.toString(values));
            }
            Iterator<? extends V> it = values.iterator();
            if (it.hasNext()) {
                ImmutableCollection.Builder<V> builderNewValueCollectionBuilderWithExpectedSize = ensureBuilderMapNonNull().get(key);
                if (builderNewValueCollectionBuilderWithExpectedSize == null) {
                    builderNewValueCollectionBuilderWithExpectedSize = newValueCollectionBuilderWithExpectedSize(expectedValueCollectionSize(this.expectedValuesPerKey, values));
                    ensureBuilderMapNonNull().put(key, builderNewValueCollectionBuilderWithExpectedSize);
                }
                while (it.hasNext()) {
                    V next = it.next();
                    CollectPreconditions.checkEntryNotNull(key, next);
                    builderNewValueCollectionBuilderWithExpectedSize.add(next);
                }
            }
            return this;
        }

        public Builder<K, V> putAll(K key, V... values) {
            return putAll(key, Arrays.asList(values));
        }

        public Builder<K, V> putAll(Multimap<? extends K, ? extends V> multimap) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : multimap.asMap().entrySet()) {
                putAll(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Builder<K, V> orderKeysBy(Comparator<? super K> keyComparator) {
            this.keyComparator = (Comparator) Preconditions.checkNotNull(keyComparator);
            return this;
        }

        public Builder<K, V> orderValuesBy(Comparator<? super V> valueComparator) {
            this.valueComparator = (Comparator) Preconditions.checkNotNull(valueComparator);
            return this;
        }

        Builder<K, V> combine(Builder<K, V> other) {
            Map<K, ImmutableCollection.Builder<V>> map = other.builderMap;
            if (map != null) {
                for (Map.Entry<K, ImmutableCollection.Builder<V>> entry : map.entrySet()) {
                    putAll(entry.getKey(), entry.getValue().build());
                }
            }
            return this;
        }

        public ImmutableMultimap<K, V> build() {
            Map<K, ImmutableCollection.Builder<V>> map = this.builderMap;
            if (map == null) {
                return ImmutableListMultimap.of();
            }
            Collection collectionEntrySet = map.entrySet();
            Comparator<? super K> comparator = this.keyComparator;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return ImmutableListMultimap.fromMapBuilderEntries(collectionEntrySet, this.valueComparator);
        }
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        if (multimap instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) multimap;
            if (!immutableMultimap.isPartialView()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf((Multimap) multimap);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> entries) {
        return ImmutableListMultimap.copyOf((Iterable) entries);
    }

    static class FieldSettersHolder {
        static final Serialization.FieldSetter<? super ImmutableMultimap<?, ?>> MAP_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "map");
        static final Serialization.FieldSetter<? super ImmutableMultimap<?, ?>> SIZE_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "size");

        FieldSettersHolder() {
        }
    }

    ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> map, int size) {
        this.map = map;
        this.size = size;
    }

    @Override
    @Deprecated
    public ImmutableCollection<V> removeAll(@CheckForNull Object key) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public ImmutableCollection<V> replaceValues(K key, Iterable<? extends V> values) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean put(K key, V value) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean putAll(K key, Iterable<? extends V> values) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
        throw new UnsupportedOperationException();
    }

    boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override
    public boolean containsKey(@CheckForNull Object key) {
        return this.map.containsKey(key);
    }

    @Override
    public boolean containsValue(@CheckForNull Object value) {
        return value != null && super.containsValue(value);
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public ImmutableSet<K> keySet() {
        return this.map.keySet();
    }

    @Override
    Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    @Override
    public ImmutableMap<K, Collection<V>> asMap() {
        return this.map;
    }

    @Override
    Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    @Override
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    @Override
    public ImmutableCollection<Map.Entry<K, V>> createEntries() {
        return new EntryCollection(this);
    }

    private static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;
        final ImmutableMultimap<K, V> multimap;

        EntryCollection(ImmutableMultimap<K, V> multimap) {
            this.multimap = multimap;
        }

        @Override
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return this.multimap.entryIterator();
        }

        @Override
        boolean isPartialView() {
            return this.multimap.isPartialView();
        }

        @Override
        public int size() {
            return this.multimap.size();
        }

        @Override
        public boolean contains(@CheckForNull Object object) {
            if (!(object instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) object;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    @Override
    public UnmodifiableIterator<Map.Entry<K, V>> entryIterator() {
        return new UnmodifiableIterator<Map.Entry<K, V>>() {
            final Iterator<? extends Map.Entry<K, ? extends ImmutableCollection<V>>> asMapItr;

            @CheckForNull
            K currentKey = null;
            Iterator<V> valueItr = Iterators.emptyIterator();

            {
                this.asMapItr = ImmutableMultimap.this.map.entrySet().iterator();
            }

            @Override
            public boolean hasNext() {
                return this.valueItr.hasNext() || this.asMapItr.hasNext();
            }

            @Override
            public Map.Entry<K, V> next() {
                if (!this.valueItr.hasNext()) {
                    Map.Entry<K, ? extends ImmutableCollection<V>> next = this.asMapItr.next();
                    this.currentKey = next.getKey();
                    this.valueItr = next.getValue().iterator();
                }
                return Maps.immutableEntry(Objects.requireNonNull(this.currentKey), this.valueItr.next());
            }
        };
    }

    @Override
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    @Override
    public ImmutableMultiset<K> createKeys() {
        return new Keys();
    }

    class Keys extends ImmutableMultiset<K> {
        @Override
        boolean isPartialView() {
            return true;
        }

        Keys() {
        }

        @Override
        public boolean contains(@CheckForNull Object object) {
            return ImmutableMultimap.this.containsKey(object);
        }

        @Override
        public int count(@CheckForNull Object element) {
            ImmutableCollection<V> immutableCollection = ImmutableMultimap.this.map.get(element);
            if (immutableCollection == null) {
                return 0;
            }
            return immutableCollection.size();
        }

        @Override
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }

        @Override
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override
        Multiset.Entry<K> getEntry(int index) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.map.entrySet().asList().get(index);
            return Multisets.immutableEntry(entry.getKey(), entry.getValue().size());
        }

        @Override
        Object writeReplace() {
            return new KeysSerializedForm(ImmutableMultimap.this);
        }

        private void readObject(ObjectInputStream stream) throws InvalidObjectException {
            throw new InvalidObjectException("Use KeysSerializedForm");
        }
    }

    private static final class KeysSerializedForm implements Serializable {
        final ImmutableMultimap<?, ?> multimap;

        KeysSerializedForm(ImmutableMultimap<?, ?> multimap) {
            this.multimap = multimap;
        }

        Object readResolve() {
            return this.multimap.keys();
        }
    }

    @Override
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    @Override
    public ImmutableCollection<V> createValues() {
        return new Values(this);
    }

    @Override
    public UnmodifiableIterator<V> valueIterator() {
        return new UnmodifiableIterator<V>() {
            Iterator<? extends ImmutableCollection<V>> valueCollectionItr;
            Iterator<V> valueItr = Iterators.emptyIterator();

            {
                this.valueCollectionItr = ImmutableMultimap.this.map.values().iterator();
            }

            @Override
            public boolean hasNext() {
                return this.valueItr.hasNext() || this.valueCollectionItr.hasNext();
            }

            @Override
            public V next() {
                if (!this.valueItr.hasNext()) {
                    this.valueItr = this.valueCollectionItr.next().iterator();
                }
                return this.valueItr.next();
            }
        };
    }

    private static final class Values<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;
        private final transient ImmutableMultimap<K, V> multimap;

        @Override
        boolean isPartialView() {
            return true;
        }

        Values(ImmutableMultimap<K, V> multimap) {
            this.multimap = multimap;
        }

        @Override
        public boolean contains(@CheckForNull Object object) {
            return this.multimap.containsValue(object);
        }

        @Override
        public UnmodifiableIterator<V> iterator() {
            return this.multimap.valueIterator();
        }

        @Override
        int copyIntoArray(Object[] dst, int offset) {
            UnmodifiableIterator<? extends ImmutableCollection<V>> it = this.multimap.map.values().iterator();
            while (it.hasNext()) {
                offset = it.next().copyIntoArray(dst, offset);
            }
            return offset;
        }

        @Override
        public int size() {
            return this.multimap.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }
}
