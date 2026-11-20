package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public final class Multimaps {
    private Multimaps() {
    }

    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> toMultimap(Function<? super T, ? extends K> keyFunction, Function<? super T, ? extends V> valueFunction, Supplier<M> multimapSupplier) {
        return CollectCollectors.toMultimap(keyFunction, valueFunction, multimapSupplier);
    }

    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> flatteningToMultimap(Function<? super T, ? extends K> keyFunction, Function<? super T, ? extends Stream<? extends V>> valueFunction, Supplier<M> multimapSupplier) {
        return CollectCollectors.flatteningToMultimap(keyFunction, valueFunction, multimapSupplier);
    }

    public static <K, V> Multimap<K, V> newMultimap(Map<K, Collection<V>> map, final com.google.common.base.Supplier<? extends Collection<V>> factory) {
        return new CustomMultimap(map, factory);
    }

    private static class CustomMultimap<K, V> extends AbstractMapBasedMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.Supplier<? extends Collection<V>> factory;

        CustomMultimap(Map<K, Collection<V>> map, com.google.common.base.Supplier<? extends Collection<V>> factory) {
            super(map);
            this.factory = (com.google.common.base.Supplier) Preconditions.checkNotNull(factory);
        }

        @Override
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        protected Collection<V> createCollection() {
            return this.factory.get();
        }

        @Override
        <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return Sets.unmodifiableNavigableSet((NavigableSet) collection);
            }
            if (collection instanceof SortedSet) {
                return Collections.unmodifiableSortedSet((SortedSet) collection);
            }
            if (collection instanceof Set) {
                return Collections.unmodifiableSet((Set) collection);
            }
            if (collection instanceof List) {
                return Collections.unmodifiableList((List) collection);
            }
            return Collections.unmodifiableCollection(collection);
        }

        @Override
        Collection<V> wrapCollection(@ParametricNullness K key, Collection<V> collection) {
            if (collection instanceof List) {
                return wrapList(key, (List) collection, null);
            }
            if (collection instanceof NavigableSet) {
                return new AbstractMapBasedMultimap.WrappedNavigableSet(key, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new AbstractMapBasedMultimap.WrappedSortedSet(key, (SortedSet) collection, null);
            }
            if (collection instanceof Set) {
                return new AbstractMapBasedMultimap.WrappedSet(key, (Set) collection);
            }
            return new AbstractMapBasedMultimap.WrappedCollection(key, collection, null);
        }

        private void writeObject(ObjectOutputStream stream) throws IOException {
            stream.defaultWriteObject();
            stream.writeObject(this.factory);
            stream.writeObject(backingMap());
        }

        private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
            stream.defaultReadObject();
            this.factory = (com.google.common.base.Supplier) Objects.requireNonNull(stream.readObject());
            setMap((Map) Objects.requireNonNull(stream.readObject()));
        }
    }

    public static <K, V> ListMultimap<K, V> newListMultimap(Map<K, Collection<V>> map, final com.google.common.base.Supplier<? extends List<V>> factory) {
        return new CustomListMultimap(map, factory);
    }

    private static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.Supplier<? extends List<V>> factory;

        CustomListMultimap(Map<K, Collection<V>> map, com.google.common.base.Supplier<? extends List<V>> factory) {
            super(map);
            this.factory = (com.google.common.base.Supplier) Preconditions.checkNotNull(factory);
        }

        @Override
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        public List<V> createCollection() {
            return this.factory.get();
        }

        private void writeObject(ObjectOutputStream stream) throws IOException {
            stream.defaultWriteObject();
            stream.writeObject(this.factory);
            stream.writeObject(backingMap());
        }

        private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
            stream.defaultReadObject();
            this.factory = (com.google.common.base.Supplier) Objects.requireNonNull(stream.readObject());
            setMap((Map) Objects.requireNonNull(stream.readObject()));
        }
    }

    public static <K, V> SetMultimap<K, V> newSetMultimap(Map<K, Collection<V>> map, final com.google.common.base.Supplier<? extends Set<V>> factory) {
        return new CustomSetMultimap(map, factory);
    }

    private static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.Supplier<? extends Set<V>> factory;

        CustomSetMultimap(Map<K, Collection<V>> map, com.google.common.base.Supplier<? extends Set<V>> factory) {
            super(map);
            this.factory = (com.google.common.base.Supplier) Preconditions.checkNotNull(factory);
        }

        @Override
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        public Set<V> createCollection() {
            return this.factory.get();
        }

        @Override
        <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return Sets.unmodifiableNavigableSet((NavigableSet) collection);
            }
            if (collection instanceof SortedSet) {
                return Collections.unmodifiableSortedSet((SortedSet) collection);
            }
            return Collections.unmodifiableSet((Set) collection);
        }

        @Override
        Collection<V> wrapCollection(@ParametricNullness K key, Collection<V> collection) {
            if (collection instanceof NavigableSet) {
                return new AbstractMapBasedMultimap.WrappedNavigableSet(key, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new AbstractMapBasedMultimap.WrappedSortedSet(key, (SortedSet) collection, null);
            }
            return new AbstractMapBasedMultimap.WrappedSet(key, (Set) collection);
        }

        private void writeObject(ObjectOutputStream stream) throws IOException {
            stream.defaultWriteObject();
            stream.writeObject(this.factory);
            stream.writeObject(backingMap());
        }

        private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
            stream.defaultReadObject();
            this.factory = (com.google.common.base.Supplier) Objects.requireNonNull(stream.readObject());
            setMap((Map) Objects.requireNonNull(stream.readObject()));
        }
    }

    public static <K, V> SortedSetMultimap<K, V> newSortedSetMultimap(Map<K, Collection<V>> map, final com.google.common.base.Supplier<? extends SortedSet<V>> factory) {
        return new CustomSortedSetMultimap(map, factory);
    }

    private static class CustomSortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.Supplier<? extends SortedSet<V>> factory;

        @CheckForNull
        transient Comparator<? super V> valueComparator;

        CustomSortedSetMultimap(Map<K, Collection<V>> map, com.google.common.base.Supplier<? extends SortedSet<V>> factory) {
            super(map);
            this.factory = (com.google.common.base.Supplier) Preconditions.checkNotNull(factory);
            this.valueComparator = factory.get().comparator();
        }

        @Override
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        public SortedSet<V> createCollection() {
            return this.factory.get();
        }

        @Override
        @CheckForNull
        public Comparator<? super V> valueComparator() {
            return this.valueComparator;
        }

        private void writeObject(ObjectOutputStream stream) throws IOException {
            stream.defaultWriteObject();
            stream.writeObject(this.factory);
            stream.writeObject(backingMap());
        }

        private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
            stream.defaultReadObject();
            com.google.common.base.Supplier<? extends SortedSet<V>> supplier = (com.google.common.base.Supplier) Objects.requireNonNull(stream.readObject());
            this.factory = supplier;
            this.valueComparator = supplier.get().comparator();
            setMap((Map) Objects.requireNonNull(stream.readObject()));
        }
    }

    public static <K, V, M extends Multimap<K, V>> M invertFrom(Multimap<? extends V, ? extends K> source, M dest) {
        Preconditions.checkNotNull(dest);
        for (Map.Entry<? extends V, ? extends K> entry : source.entries()) {
            dest.put(entry.getValue(), entry.getKey());
        }
        return dest;
    }

    public static <K, V> Multimap<K, V> synchronizedMultimap(Multimap<K, V> multimap) {
        return Synchronized.multimap(multimap, null);
    }

    public static <K, V> Multimap<K, V> unmodifiableMultimap(Multimap<K, V> delegate) {
        return ((delegate instanceof UnmodifiableMultimap) || (delegate instanceof ImmutableMultimap)) ? delegate : new UnmodifiableMultimap(delegate);
    }

    @Deprecated
    public static <K, V> Multimap<K, V> unmodifiableMultimap(ImmutableMultimap<K, V> delegate) {
        return (Multimap) Preconditions.checkNotNull(delegate);
    }

    static class UnmodifiableMultimap<K, V> extends ForwardingMultimap<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final Multimap<K, V> delegate;

        @CheckForNull
        @LazyInit
        transient Collection<Map.Entry<K, V>> entries;

        @CheckForNull
        @LazyInit
        transient Set<K> keySet;

        @CheckForNull
        @LazyInit
        transient Multiset<K> keys;

        @CheckForNull
        @LazyInit
        transient Map<K, Collection<V>> map;

        @CheckForNull
        @LazyInit
        transient Collection<V> values;

        UnmodifiableMultimap(final Multimap<K, V> delegate) {
            this.delegate = (Multimap) Preconditions.checkNotNull(delegate);
        }

        @Override
        public Multimap<K, V> delegate() {
            return this.delegate;
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.map;
            if (map != null) {
                return map;
            }
            Map<K, Collection<V>> mapUnmodifiableMap = Collections.unmodifiableMap(Maps.transformValues(this.delegate.asMap(), new com.google.common.base.Function() {
                @Override
                public final Object apply(Object obj) {
                    return Multimaps.unmodifiableValueCollection((Collection) obj);
                }
            }));
            this.map = mapUnmodifiableMap;
            return mapUnmodifiableMap;
        }

        @Override
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection = this.entries;
            if (collection != null) {
                return collection;
            }
            Collection<Map.Entry<K, V>> collectionUnmodifiableEntries = Multimaps.unmodifiableEntries(this.delegate.entries());
            this.entries = collectionUnmodifiableEntries;
            return collectionUnmodifiableEntries;
        }

        @Override
        public Collection<V> get(@ParametricNullness K key) {
            return Multimaps.unmodifiableValueCollection(this.delegate.get(key));
        }

        @Override
        public Multiset<K> keys() {
            Multiset<K> multiset = this.keys;
            if (multiset != null) {
                return multiset;
            }
            Multiset<K> multisetUnmodifiableMultiset = Multisets.unmodifiableMultiset(this.delegate.keys());
            this.keys = multisetUnmodifiableMultiset;
            return multisetUnmodifiableMultiset;
        }

        @Override
        public Set<K> keySet() {
            Set<K> set = this.keySet;
            if (set != null) {
                return set;
            }
            Set<K> setUnmodifiableSet = Collections.unmodifiableSet(this.delegate.keySet());
            this.keySet = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override
        public boolean put(@ParametricNullness K key, @ParametricNullness V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean putAll(@ParametricNullness K key, Iterable<? extends V> values) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Collection<V> removeAll(@CheckForNull Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Collection<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Collection<V> values() {
            Collection<V> collection = this.values;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionUnmodifiableCollection = Collections.unmodifiableCollection(this.delegate.values());
            this.values = collectionUnmodifiableCollection;
            return collectionUnmodifiableCollection;
        }
    }

    private static class UnmodifiableListMultimap<K, V> extends UnmodifiableMultimap<K, V> implements ListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        UnmodifiableListMultimap(ListMultimap<K, V> delegate) {
            super(delegate);
        }

        @Override
        public ListMultimap<K, V> delegate() {
            return (ListMultimap) super.delegate();
        }

        @Override
        public List<V> get(@ParametricNullness K key) {
            return Collections.unmodifiableList(delegate().get((Object) key));
        }

        @Override
        public List<V> removeAll(@CheckForNull Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public List<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
            throw new UnsupportedOperationException();
        }
    }

    private static class UnmodifiableSetMultimap<K, V> extends UnmodifiableMultimap<K, V> implements SetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        UnmodifiableSetMultimap(SetMultimap<K, V> delegate) {
            super(delegate);
        }

        @Override
        public SetMultimap<K, V> delegate() {
            return (SetMultimap) super.delegate();
        }

        @Override
        public Set<V> get(@ParametricNullness K key) {
            return Collections.unmodifiableSet(delegate().get((Object) key));
        }

        @Override
        public Set<Map.Entry<K, V>> entries() {
            return Maps.unmodifiableEntrySet(delegate().entries());
        }

        @Override
        public Set<V> removeAll(@CheckForNull Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
            throw new UnsupportedOperationException();
        }
    }

    private static class UnmodifiableSortedSetMultimap<K, V> extends UnmodifiableSetMultimap<K, V> implements SortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        UnmodifiableSortedSetMultimap(SortedSetMultimap<K, V> delegate) {
            super(delegate);
        }

        @Override
        public SortedSetMultimap<K, V> delegate() {
            return (SortedSetMultimap) super.delegate();
        }

        @Override
        public SortedSet<V> get(@ParametricNullness K key) {
            return Collections.unmodifiableSortedSet(delegate().get((Object) key));
        }

        @Override
        public SortedSet<V> removeAll(@CheckForNull Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public SortedSet<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
            throw new UnsupportedOperationException();
        }

        @Override
        @CheckForNull
        public Comparator<? super V> valueComparator() {
            return delegate().valueComparator();
        }
    }

    public static <K, V> SetMultimap<K, V> synchronizedSetMultimap(SetMultimap<K, V> multimap) {
        return Synchronized.setMultimap(multimap, null);
    }

    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(SetMultimap<K, V> delegate) {
        return ((delegate instanceof UnmodifiableSetMultimap) || (delegate instanceof ImmutableSetMultimap)) ? delegate : new UnmodifiableSetMultimap(delegate);
    }

    @Deprecated
    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(ImmutableSetMultimap<K, V> delegate) {
        return (SetMultimap) Preconditions.checkNotNull(delegate);
    }

    public static <K, V> SortedSetMultimap<K, V> synchronizedSortedSetMultimap(SortedSetMultimap<K, V> multimap) {
        return Synchronized.sortedSetMultimap(multimap, null);
    }

    public static <K, V> SortedSetMultimap<K, V> unmodifiableSortedSetMultimap(SortedSetMultimap<K, V> delegate) {
        return delegate instanceof UnmodifiableSortedSetMultimap ? delegate : new UnmodifiableSortedSetMultimap(delegate);
    }

    public static <K, V> ListMultimap<K, V> synchronizedListMultimap(ListMultimap<K, V> multimap) {
        return Synchronized.listMultimap(multimap, null);
    }

    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ListMultimap<K, V> delegate) {
        return ((delegate instanceof UnmodifiableListMultimap) || (delegate instanceof ImmutableListMultimap)) ? delegate : new UnmodifiableListMultimap(delegate);
    }

    @Deprecated
    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ImmutableListMultimap<K, V> delegate) {
        return (ListMultimap) Preconditions.checkNotNull(delegate);
    }

    public static <V> Collection<V> unmodifiableValueCollection(Collection<V> collection) {
        if (collection instanceof SortedSet) {
            return Collections.unmodifiableSortedSet((SortedSet) collection);
        }
        if (collection instanceof Set) {
            return Collections.unmodifiableSet((Set) collection);
        }
        if (collection instanceof List) {
            return Collections.unmodifiableList((List) collection);
        }
        return Collections.unmodifiableCollection(collection);
    }

    public static <K, V> Collection<Map.Entry<K, V>> unmodifiableEntries(Collection<Map.Entry<K, V>> entries) {
        if (entries instanceof Set) {
            return Maps.unmodifiableEntrySet((Set) entries);
        }
        return new Maps.UnmodifiableEntries(Collections.unmodifiableCollection(entries));
    }

    public static <K, V> Map<K, List<V>> asMap(ListMultimap<K, V> listMultimap) {
        return listMultimap.asMap();
    }

    public static <K, V> Map<K, Set<V>> asMap(SetMultimap<K, V> setMultimap) {
        return setMultimap.asMap();
    }

    public static <K, V> Map<K, SortedSet<V>> asMap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap.asMap();
    }

    public static <K, V> Map<K, Collection<V>> asMap(Multimap<K, V> multimap) {
        return multimap.asMap();
    }

    public static <K, V> SetMultimap<K, V> forMap(Map<K, V> map) {
        return new MapMultimap(map);
    }

    private static class MapMultimap<K, V> extends AbstractMultimap<K, V> implements SetMultimap<K, V>, Serializable {
        private static final long serialVersionUID = 7845222491160860175L;
        final Map<K, V> map;

        MapMultimap(Map<K, V> map) {
            this.map = (Map) Preconditions.checkNotNull(map);
        }

        @Override
        public int size() {
            return this.map.size();
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return this.map.containsKey(key);
        }

        @Override
        public boolean containsValue(@CheckForNull Object value) {
            return this.map.containsValue(value);
        }

        @Override
        public boolean containsEntry(@CheckForNull Object key, @CheckForNull Object value) {
            return this.map.entrySet().contains(Maps.immutableEntry(key, value));
        }

        @Override
        public Set<V> get(@ParametricNullness final K key) {
            return new Sets.ImprovedAbstractSet<V>(this) {
                final MapMultimap this$0;

                {
                    this.this$0 = this;
                }

                @Override
                public Iterator<V> iterator() {
                    return new Iterator<V>() {
                        int i;

                        @Override
                        public boolean hasNext() {
                            return this.i == 0 && AnonymousClass1.this.this$0.map.containsKey(key);
                        }

                        @Override
                        @ParametricNullness
                        public V next() {
                            if (!hasNext()) {
                                throw new NoSuchElementException();
                            }
                            this.i++;
                            return (V) NullnessCasts.uncheckedCastNullableTToT(AnonymousClass1.this.this$0.map.get(key));
                        }

                        @Override
                        public void remove() {
                            CollectPreconditions.checkRemove(this.i == 1);
                            this.i = -1;
                            AnonymousClass1.this.this$0.map.remove(key);
                        }
                    };
                }

                @Override
                public int size() {
                    return this.this$0.map.containsKey(key) ? 1 : 0;
                }
            };
        }

        @Override
        public boolean put(@ParametricNullness K key, @ParametricNullness V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean putAll(@ParametricNullness K key, Iterable<? extends V> values) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
            return this.map.entrySet().remove(Maps.immutableEntry(key, value));
        }

        @Override
        public Set<V> removeAll(@CheckForNull Object key) {
            HashSet hashSet = new HashSet(2);
            if (!this.map.containsKey(key)) {
                return hashSet;
            }
            hashSet.add(this.map.remove(key));
            return hashSet;
        }

        @Override
        public void clear() {
            this.map.clear();
        }

        @Override
        Set<K> createKeySet() {
            return this.map.keySet();
        }

        @Override
        Collection<V> createValues() {
            return this.map.values();
        }

        @Override
        public Set<Map.Entry<K, V>> entries() {
            return this.map.entrySet();
        }

        @Override
        Collection<Map.Entry<K, V>> createEntries() {
            throw new AssertionError("unreachable");
        }

        @Override
        Multiset<K> createKeys() {
            return new Keys(this);
        }

        @Override
        Iterator<Map.Entry<K, V>> entryIterator() {
            return this.map.entrySet().iterator();
        }

        @Override
        Map<K, Collection<V>> createAsMap() {
            return new AsMap(this);
        }

        @Override
        public int hashCode() {
            return this.map.hashCode();
        }
    }

    public static <K, V1, V2> Multimap<K, V2> transformValues(Multimap<K, V1> fromMultimap, final com.google.common.base.Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries(fromMultimap, Maps.asEntryTransformer(function));
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformValues(ListMultimap<K, V1> fromMultimap, final com.google.common.base.Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries((ListMultimap) fromMultimap, Maps.asEntryTransformer(function));
    }

    public static <K, V1, V2> Multimap<K, V2> transformEntries(Multimap<K, V1> fromMap, Maps.EntryTransformer<? super K, ? super V1, V2> transformer) {
        return new TransformedEntriesMultimap(fromMap, transformer);
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformEntries(ListMultimap<K, V1> fromMap, Maps.EntryTransformer<? super K, ? super V1, V2> transformer) {
        return new TransformedEntriesListMultimap(fromMap, transformer);
    }

    static class TransformedEntriesMultimap<K, V1, V2> extends AbstractMultimap<K, V2> {
        final Multimap<K, V1> fromMultimap;
        final Maps.EntryTransformer<? super K, ? super V1, V2> transformer;

        TransformedEntriesMultimap(Multimap<K, V1> fromMultimap, final Maps.EntryTransformer<? super K, ? super V1, V2> transformer) {
            this.fromMultimap = (Multimap) Preconditions.checkNotNull(fromMultimap);
            this.transformer = (Maps.EntryTransformer) Preconditions.checkNotNull(transformer);
        }

        public Collection<V2> m684x893217c0(@ParametricNullness K key, Collection<V1> values) {
            com.google.common.base.Function functionAsValueToValueFunction = Maps.asValueToValueFunction(this.transformer, key);
            if (values instanceof List) {
                return Lists.transform((List) values, functionAsValueToValueFunction);
            }
            return Collections2.transform(values, functionAsValueToValueFunction);
        }

        @Override
        Map<K, Collection<V2>> createAsMap() {
            return Maps.transformEntries(this.fromMultimap.asMap(), new Maps.EntryTransformer() {
                @Override
                public final Object transformEntry(Object obj, Object obj2) {
                    return this.f$0.m684x893217c0(obj, (Collection) obj2);
                }
            });
        }

        @Override
        public void clear() {
            this.fromMultimap.clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return this.fromMultimap.containsKey(key);
        }

        @Override
        Collection<Map.Entry<K, V2>> createEntries() {
            return new AbstractMultimap.Entries();
        }

        @Override
        Iterator<Map.Entry<K, V2>> entryIterator() {
            return Iterators.transform(this.fromMultimap.entries().iterator(), Maps.asEntryToEntryFunction(this.transformer));
        }

        @Override
        public Collection<V2> get(@ParametricNullness final K key) {
            return m684x893217c0(key, this.fromMultimap.get(key));
        }

        @Override
        public boolean isEmpty() {
            return this.fromMultimap.isEmpty();
        }

        @Override
        Set<K> createKeySet() {
            return this.fromMultimap.keySet();
        }

        @Override
        Multiset<K> createKeys() {
            return this.fromMultimap.keys();
        }

        @Override
        public boolean put(@ParametricNullness K key, @ParametricNullness V2 value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean putAll(@ParametricNullness K key, Iterable<? extends V2> values) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean putAll(Multimap<? extends K, ? extends V2> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
            return get(key).remove(value);
        }

        @Override
        public Collection<V2> removeAll(@CheckForNull Object key) {
            return m684x893217c0(key, this.fromMultimap.removeAll(key));
        }

        @Override
        public Collection<V2> replaceValues(@ParametricNullness K key, Iterable<? extends V2> values) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return this.fromMultimap.size();
        }

        @Override
        Collection<V2> createValues() {
            return Collections2.transform(this.fromMultimap.entries(), Maps.asEntryToValueFunction(this.transformer));
        }
    }

    private static final class TransformedEntriesListMultimap<K, V1, V2> extends TransformedEntriesMultimap<K, V1, V2> implements ListMultimap<K, V2> {
        TransformedEntriesListMultimap(ListMultimap<K, V1> fromMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> transformer) {
            super(fromMultimap, transformer);
        }

        @Override
        public List<V2> m684x893217c0(@ParametricNullness K key, Collection<V1> values) {
            return Lists.transform((List) values, Maps.asValueToValueFunction(this.transformer, key));
        }

        @Override
        public List<V2> get(@ParametricNullness K key) {
            return m684x893217c0((Object) key, (Collection) this.fromMultimap.get(key));
        }

        @Override
        public List<V2> removeAll(@CheckForNull Object key) {
            return m684x893217c0(key, (Collection) this.fromMultimap.removeAll(key));
        }

        @Override
        public List<V2> replaceValues(@ParametricNullness K key, Iterable<? extends V2> values) {
            throw new UnsupportedOperationException();
        }
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterable<V> values, com.google.common.base.Function<? super V, K> keyFunction) {
        return index(values.iterator(), keyFunction);
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterator<V> values, com.google.common.base.Function<? super V, K> keyFunction) {
        Preconditions.checkNotNull(keyFunction);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        while (values.hasNext()) {
            V next = values.next();
            Preconditions.checkNotNull(next, values);
            builder.put((Object) keyFunction.apply(next), (Object) next);
        }
        return builder.build();
    }

    static class Keys<K, V> extends AbstractMultiset<K> {
        final Multimap<K, V> multimap;

        Keys(Multimap<K, V> multimap) {
            this.multimap = multimap;
        }

        @Override
        Iterator<Multiset.Entry<K>> entryIterator() {
            return new TransformedIterator<Map.Entry<K, Collection<V>>, Multiset.Entry<K>>(this.multimap.asMap().entrySet().iterator()) {
                @Override
                public Multiset.Entry<K> transform(final Map.Entry<K, Collection<V>> backingEntry) {
                    return new Multisets.AbstractEntry<K>(this) {
                        final AnonymousClass1 this$1;

                        {
                            this.this$1 = this;
                        }

                        @Override
                        @ParametricNullness
                        public K getElement() {
                            return (K) backingEntry.getKey();
                        }

                        @Override
                        public int getCount() {
                            return ((Collection) backingEntry.getValue()).size();
                        }
                    };
                }
            };
        }

        @Override
        int distinctElements() {
            return this.multimap.asMap().size();
        }

        @Override
        public int size() {
            return this.multimap.size();
        }

        @Override
        public boolean contains(@CheckForNull Object element) {
            return this.multimap.containsKey(element);
        }

        @Override
        public Iterator<K> iterator() {
            return Maps.keyIterator(this.multimap.entries().iterator());
        }

        @Override
        public int count(@CheckForNull Object element) {
            Collection collection = (Collection) Maps.safeGet(this.multimap.asMap(), element);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override
        public int remove(@CheckForNull Object element, int occurrences) {
            CollectPreconditions.checkNonnegative(occurrences, "occurrences");
            if (occurrences == 0) {
                return count(element);
            }
            Collection collection = (Collection) Maps.safeGet(this.multimap.asMap(), element);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (occurrences >= size) {
                collection.clear();
                return size;
            }
            Iterator it = collection.iterator();
            for (int i = 0; i < occurrences; i++) {
                it.next();
                it.remove();
            }
            return size;
        }

        @Override
        public void clear() {
            this.multimap.clear();
        }

        @Override
        public Set<K> elementSet() {
            return this.multimap.keySet();
        }

        @Override
        Iterator<K> elementIterator() {
            throw new AssertionError("should never be called");
        }
    }

    static abstract class Entries<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        abstract Multimap<K, V> multimap();

        Entries() {
        }

        @Override
        public int size() {
            return multimap().size();
        }

        @Override
        public boolean contains(@CheckForNull Object o) {
            if (!(o instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) o;
            return multimap().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override
        public boolean remove(@CheckForNull Object o) {
            if (!(o instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) o;
            return multimap().remove(entry.getKey(), entry.getValue());
        }

        @Override
        public void clear() {
            multimap().clear();
        }
    }

    static final class AsMap<K, V> extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        private final Multimap<K, V> multimap;

        AsMap(Multimap<K, V> multimap) {
            this.multimap = (Multimap) Preconditions.checkNotNull(multimap);
        }

        @Override
        public int size() {
            return this.multimap.keySet().size();
        }

        @Override
        protected Set<Map.Entry<K, Collection<V>>> createEntrySet() {
            return new EntrySet();
        }

        void removeValuesForKey(@CheckForNull Object key) {
            this.multimap.keySet().remove(key);
        }

        class EntrySet extends Maps.EntrySet<K, Collection<V>> {
            EntrySet() {
            }

            @Override
            Map<K, Collection<V>> map() {
                return AsMap.this;
            }

            @Override
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Maps.asMapEntryIterator(AsMap.this.multimap.keySet(), new com.google.common.base.Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.f$0.m683xda360ac8(obj);
                    }
                });
            }

            Collection m683xda360ac8(Object obj) {
                return AsMap.this.multimap.get(obj);
            }

            @Override
            public boolean remove(@CheckForNull Object o) {
                if (!contains(o)) {
                    return false;
                }
                AsMap.this.removeValuesForKey(((Map.Entry) Objects.requireNonNull((Map.Entry) o)).getKey());
                return true;
            }
        }

        @Override
        @CheckForNull
        public Collection<V> get(@CheckForNull Object key) {
            if (containsKey(key)) {
                return this.multimap.get(key);
            }
            return null;
        }

        @Override
        @CheckForNull
        public Collection<V> remove(@CheckForNull Object key) {
            if (containsKey(key)) {
                return this.multimap.removeAll(key);
            }
            return null;
        }

        @Override
        public Set<K> keySet() {
            return this.multimap.keySet();
        }

        @Override
        public boolean isEmpty() {
            return this.multimap.isEmpty();
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return this.multimap.containsKey(key);
        }

        @Override
        public void clear() {
            this.multimap.clear();
        }
    }

    public static <K, V> Multimap<K, V> filterKeys(Multimap<K, V> unfiltered, final Predicate<? super K> keyPredicate) {
        if (unfiltered instanceof SetMultimap) {
            return filterKeys((SetMultimap) unfiltered, (Predicate) keyPredicate);
        }
        if (unfiltered instanceof ListMultimap) {
            return filterKeys((ListMultimap) unfiltered, (Predicate) keyPredicate);
        }
        if (unfiltered instanceof FilteredKeyMultimap) {
            FilteredKeyMultimap filteredKeyMultimap = (FilteredKeyMultimap) unfiltered;
            return new FilteredKeyMultimap(filteredKeyMultimap.unfiltered, Predicates.and(filteredKeyMultimap.keyPredicate, keyPredicate));
        }
        if (unfiltered instanceof FilteredMultimap) {
            return filterFiltered((FilteredMultimap) unfiltered, Maps.keyPredicateOnEntries(keyPredicate));
        }
        return new FilteredKeyMultimap(unfiltered, keyPredicate);
    }

    public static <K, V> SetMultimap<K, V> filterKeys(SetMultimap<K, V> unfiltered, final Predicate<? super K> keyPredicate) {
        if (unfiltered instanceof FilteredKeySetMultimap) {
            FilteredKeySetMultimap filteredKeySetMultimap = (FilteredKeySetMultimap) unfiltered;
            return new FilteredKeySetMultimap(filteredKeySetMultimap.unfiltered(), Predicates.and(filteredKeySetMultimap.keyPredicate, keyPredicate));
        }
        if (unfiltered instanceof FilteredSetMultimap) {
            return filterFiltered((FilteredSetMultimap) unfiltered, Maps.keyPredicateOnEntries(keyPredicate));
        }
        return new FilteredKeySetMultimap(unfiltered, keyPredicate);
    }

    public static <K, V> ListMultimap<K, V> filterKeys(ListMultimap<K, V> unfiltered, final Predicate<? super K> keyPredicate) {
        if (unfiltered instanceof FilteredKeyListMultimap) {
            FilteredKeyListMultimap filteredKeyListMultimap = (FilteredKeyListMultimap) unfiltered;
            return new FilteredKeyListMultimap(filteredKeyListMultimap.unfiltered(), Predicates.and(filteredKeyListMultimap.keyPredicate, keyPredicate));
        }
        return new FilteredKeyListMultimap(unfiltered, keyPredicate);
    }

    public static <K, V> Multimap<K, V> filterValues(Multimap<K, V> unfiltered, final Predicate<? super V> valuePredicate) {
        return filterEntries(unfiltered, Maps.valuePredicateOnEntries(valuePredicate));
    }

    public static <K, V> SetMultimap<K, V> filterValues(SetMultimap<K, V> unfiltered, final Predicate<? super V> valuePredicate) {
        return filterEntries((SetMultimap) unfiltered, Maps.valuePredicateOnEntries(valuePredicate));
    }

    public static <K, V> Multimap<K, V> filterEntries(Multimap<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        Preconditions.checkNotNull(entryPredicate);
        if (unfiltered instanceof SetMultimap) {
            return filterEntries((SetMultimap) unfiltered, (Predicate) entryPredicate);
        }
        if (unfiltered instanceof FilteredMultimap) {
            return filterFiltered((FilteredMultimap) unfiltered, entryPredicate);
        }
        return new FilteredEntryMultimap((Multimap) Preconditions.checkNotNull(unfiltered), entryPredicate);
    }

    public static <K, V> SetMultimap<K, V> filterEntries(SetMultimap<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        Preconditions.checkNotNull(entryPredicate);
        if (unfiltered instanceof FilteredSetMultimap) {
            return filterFiltered((FilteredSetMultimap) unfiltered, (Predicate) entryPredicate);
        }
        return new FilteredEntrySetMultimap((SetMultimap) Preconditions.checkNotNull(unfiltered), entryPredicate);
    }

    private static <K, V> Multimap<K, V> filterFiltered(FilteredMultimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        return new FilteredEntryMultimap(multimap.unfiltered(), Predicates.and(multimap.entryPredicate(), entryPredicate));
    }

    private static <K, V> SetMultimap<K, V> filterFiltered(FilteredSetMultimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        return new FilteredEntrySetMultimap(multimap.unfiltered(), Predicates.and(multimap.entryPredicate(), entryPredicate));
    }

    static boolean equalsImpl(Multimap<?, ?> multimap, @CheckForNull Object object) {
        if (object == multimap) {
            return true;
        }
        if (object instanceof Multimap) {
            return multimap.asMap().equals(((Multimap) object).asMap());
        }
        return false;
    }
}
