package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractSortedSetMultimap<K, V> extends AbstractSetMultimap<K, V> implements SortedSetMultimap<K, V> {
    private static final long serialVersionUID = 430848587173315748L;

    @Override
    public abstract SortedSet<V> createCollection();

    protected AbstractSortedSetMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public SortedSet<V> createUnmodifiableEmptyCollection() {
        return (SortedSet<V>) unmodifiableCollectionSubclass((Collection) createCollection());
    }

    @Override
    public <E> SortedSet<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        if (collection instanceof NavigableSet) {
            return Sets.unmodifiableNavigableSet((NavigableSet) collection);
        }
        return Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    @Override
    Collection<V> wrapCollection(@ParametricNullness K key, Collection<V> collection) {
        if (collection instanceof NavigableSet) {
            return new AbstractMapBasedMultimap.WrappedNavigableSet(key, (NavigableSet) collection, null);
        }
        return new AbstractMapBasedMultimap.WrappedSortedSet(key, (SortedSet) collection, null);
    }

    @Override
    public SortedSet<V> get(@ParametricNullness K key) {
        return (SortedSet) super.get((Object) key);
    }

    @Override
    public SortedSet<V> removeAll(@CheckForNull Object key) {
        return (SortedSet) super.removeAll(key);
    }

    @Override
    public SortedSet<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return (SortedSet) super.replaceValues((Object) key, (Iterable) values);
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }
}
