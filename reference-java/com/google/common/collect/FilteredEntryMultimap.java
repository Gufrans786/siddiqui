package com.google.common.collect;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
class FilteredEntryMultimap<K, V> extends AbstractMultimap<K, V> implements FilteredMultimap<K, V> {
    final Predicate<? super Map.Entry<K, V>> predicate;
    final Multimap<K, V> unfiltered;

    FilteredEntryMultimap(Multimap<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> predicate) {
        this.unfiltered = (Multimap) Preconditions.checkNotNull(unfiltered);
        this.predicate = (Predicate) Preconditions.checkNotNull(predicate);
    }

    @Override
    public Multimap<K, V> unfiltered() {
        return this.unfiltered;
    }

    @Override
    public Predicate<? super Map.Entry<K, V>> entryPredicate() {
        return this.predicate;
    }

    @Override
    public int size() {
        return entries().size();
    }

    public boolean satisfies(@ParametricNullness K key, @ParametricNullness V value) {
        return this.predicate.apply(Maps.immutableEntry(key, value));
    }

    final class ValuePredicate implements Predicate<V> {

        @ParametricNullness
        private final K key;

        ValuePredicate(K key) {
            this.key = key;
        }

        @Override
        public boolean apply(@ParametricNullness V value) {
            return FilteredEntryMultimap.this.satisfies(this.key, value);
        }
    }

    static <E> Collection<E> filterCollection(Collection<E> collection, Predicate<? super E> predicate) {
        if (collection instanceof Set) {
            return Sets.filter((Set) collection, predicate);
        }
        return Collections2.filter(collection, predicate);
    }

    @Override
    public boolean containsKey(@CheckForNull Object key) {
        return asMap().get(key) != null;
    }

    @Override
    public Collection<V> removeAll(@CheckForNull Object key) {
        return (Collection) MoreObjects.firstNonNull(asMap().remove(key), unmodifiableEmptyCollection());
    }

    Collection<V> unmodifiableEmptyCollection() {
        if (this.unfiltered instanceof SetMultimap) {
            return Collections.emptySet();
        }
        return Collections.emptyList();
    }

    @Override
    public void clear() {
        entries().clear();
    }

    @Override
    public Collection<V> get(@ParametricNullness K key) {
        return filterCollection(this.unfiltered.get(key), new ValuePredicate(key));
    }

    @Override
    Collection<Map.Entry<K, V>> createEntries() {
        return filterCollection(this.unfiltered.entries(), this.predicate);
    }

    @Override
    Collection<V> createValues() {
        return new FilteredMultimapValues(this);
    }

    @Override
    Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    Map<K, Collection<V>> createAsMap() {
        return new AsMap();
    }

    @Override
    Set<K> createKeySet() {
        return asMap().keySet();
    }

    boolean removeEntriesIf(Predicate<? super Map.Entry<K, Collection<V>>> predicate) {
        Iterator<Map.Entry<K, Collection<V>>> it = this.unfiltered.asMap().entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry<K, Collection<V>> next = it.next();
            K key = next.getKey();
            Collection collectionFilterCollection = filterCollection(next.getValue(), new ValuePredicate(key));
            if (!collectionFilterCollection.isEmpty() && predicate.apply(Maps.immutableEntry(key, collectionFilterCollection))) {
                if (collectionFilterCollection.size() == next.getValue().size()) {
                    it.remove();
                } else {
                    collectionFilterCollection.clear();
                }
                z = true;
            }
        }
        return z;
    }

    class AsMap extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        AsMap() {
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return get(key) != null;
        }

        @Override
        public void clear() {
            FilteredEntryMultimap.this.clear();
        }

        @Override
        @CheckForNull
        public Collection<V> get(@CheckForNull Object key) {
            Collection<V> collection = FilteredEntryMultimap.this.unfiltered.asMap().get(key);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionFilterCollection = FilteredEntryMultimap.filterCollection(collection, new ValuePredicate(key));
            if (collectionFilterCollection.isEmpty()) {
                return null;
            }
            return collectionFilterCollection;
        }

        @Override
        @CheckForNull
        public Collection<V> remove(@CheckForNull Object key) {
            Collection<V> collection = FilteredEntryMultimap.this.unfiltered.asMap().get(key);
            if (collection == null) {
                return null;
            }
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                V next = it.next();
                if (FilteredEntryMultimap.this.satisfies(key, next)) {
                    it.remove();
                    arrayListNewArrayList.add(next);
                }
            }
            if (arrayListNewArrayList.isEmpty()) {
                return null;
            }
            if (FilteredEntryMultimap.this.unfiltered instanceof SetMultimap) {
                return Collections.unmodifiableSet(Sets.newLinkedHashSet(arrayListNewArrayList));
            }
            return Collections.unmodifiableList(arrayListNewArrayList);
        }

        @Override
        Set<K> createKeySet() {
            return new Maps.KeySet<K, Collection<V>>() {
                @Override
                public boolean removeAll(Collection<?> c) {
                    return FilteredEntryMultimap.this.removeEntriesIf(Maps.keyPredicateOnEntries(Predicates.in(c)));
                }

                @Override
                public boolean retainAll(Collection<?> c) {
                    return FilteredEntryMultimap.this.removeEntriesIf(Maps.keyPredicateOnEntries(Predicates.not(Predicates.in(c))));
                }

                @Override
                public boolean remove(@CheckForNull Object o) {
                    return AsMap.this.remove(o) != null;
                }
            };
        }

        @Override
        Set<Map.Entry<K, Collection<V>>> createEntrySet() {
            return new Maps.EntrySet<K, Collection<V>>() {
                @Override
                Map<K, Collection<V>> map() {
                    return AsMap.this;
                }

                @Override
                public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                    return new AbstractIterator<Map.Entry<K, Collection<V>>>() {
                        final Iterator<Map.Entry<K, Collection<V>>> backingIterator;

                        {
                            this.backingIterator = FilteredEntryMultimap.this.unfiltered.asMap().entrySet().iterator();
                        }

                        @Override
                        @CheckForNull
                        public Map.Entry<K, Collection<V>> computeNext() {
                            while (this.backingIterator.hasNext()) {
                                Map.Entry<K, Collection<V>> next = this.backingIterator.next();
                                K key = next.getKey();
                                Collection collectionFilterCollection = FilteredEntryMultimap.filterCollection(next.getValue(), new ValuePredicate(key));
                                if (!collectionFilterCollection.isEmpty()) {
                                    return Maps.immutableEntry(key, collectionFilterCollection);
                                }
                            }
                            return endOfData();
                        }
                    };
                }

                @Override
                public boolean removeAll(Collection<?> c) {
                    return FilteredEntryMultimap.this.removeEntriesIf(Predicates.in(c));
                }

                @Override
                public boolean retainAll(Collection<?> c) {
                    return FilteredEntryMultimap.this.removeEntriesIf(Predicates.not(Predicates.in(c)));
                }

                @Override
                public int size() {
                    return Iterators.size(iterator());
                }
            };
        }

        @Override
        Collection<Collection<V>> createValues() {
            return new Maps.Values<K, Collection<V>>() {
                @Override
                public boolean remove(@CheckForNull Object o) {
                    if (!(o instanceof Collection)) {
                        return false;
                    }
                    Collection collection = (Collection) o;
                    Iterator<Map.Entry<K, Collection<V>>> it = FilteredEntryMultimap.this.unfiltered.asMap().entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<K, Collection<V>> next = it.next();
                        Collection collectionFilterCollection = FilteredEntryMultimap.filterCollection(next.getValue(), new ValuePredicate(next.getKey()));
                        if (!collectionFilterCollection.isEmpty() && collection.equals(collectionFilterCollection)) {
                            if (collectionFilterCollection.size() == next.getValue().size()) {
                                it.remove();
                                return true;
                            }
                            collectionFilterCollection.clear();
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public boolean removeAll(Collection<?> c) {
                    return FilteredEntryMultimap.this.removeEntriesIf(Maps.valuePredicateOnEntries(Predicates.in(c)));
                }

                @Override
                public boolean retainAll(Collection<?> c) {
                    return FilteredEntryMultimap.this.removeEntriesIf(Maps.valuePredicateOnEntries(Predicates.not(Predicates.in(c))));
                }
            };
        }
    }

    @Override
    Multiset<K> createKeys() {
        return new Keys();
    }

    class Keys extends Multimaps.Keys<K, V> {
        Keys() {
            super(FilteredEntryMultimap.this);
        }

        @Override
        public int remove(@CheckForNull Object key, int occurrences) {
            CollectPreconditions.checkNonnegative(occurrences, "occurrences");
            if (occurrences == 0) {
                return count(key);
            }
            Collection<V> collection = FilteredEntryMultimap.this.unfiltered.asMap().get(key);
            int i = 0;
            if (collection == null) {
                return 0;
            }
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                if (FilteredEntryMultimap.this.satisfies(key, it.next()) && (i = i + 1) <= occurrences) {
                    it.remove();
                }
            }
            return i;
        }

        class AnonymousClass1 extends Multisets.EntrySet<K> {
            AnonymousClass1() {
            }

            @Override
            Multiset<K> multiset() {
                return Keys.this;
            }

            @Override
            public Iterator<Multiset.Entry<K>> iterator() {
                return Keys.this.entryIterator();
            }

            @Override
            public int size() {
                return FilteredEntryMultimap.this.keySet().size();
            }

            private boolean removeEntriesIf(final Predicate<? super Multiset.Entry<K>> predicate) {
                return FilteredEntryMultimap.this.removeEntriesIf(new Predicate() {
                    @Override
                    public final boolean apply(Object obj) {
                        Map.Entry entry = (Map.Entry) obj;
                        return predicate.apply(Multisets.immutableEntry(entry.getKey(), ((Collection) entry.getValue()).size()));
                    }
                });
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                return removeEntriesIf(Predicates.in(c));
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                return removeEntriesIf(Predicates.not(Predicates.in(c)));
            }
        }

        @Override
        public Set<Multiset.Entry<K>> entrySet() {
            return new AnonymousClass1();
        }
    }
}
