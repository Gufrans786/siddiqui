package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements ListMultimap<K, V> {
    private static final long serialVersionUID = 6588350623831699109L;

    @Override
    public abstract List<V> createCollection();

    protected AbstractListMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public List<V> createUnmodifiableEmptyCollection() {
        return Collections.emptyList();
    }

    @Override
    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override
    Collection<V> wrapCollection(@ParametricNullness K key, Collection<V> collection) {
        return wrapList(key, (List) collection, null);
    }

    @Override
    public List<V> get(@ParametricNullness K key) {
        return (List) super.get((Object) key);
    }

    @Override
    public List<V> removeAll(@CheckForNull Object key) {
        return (List) super.removeAll(key);
    }

    @Override
    public List<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return (List) super.replaceValues((Object) key, (Iterable) values);
    }

    @Override
    public boolean put(@ParametricNullness K key, @ParametricNullness V value) {
        return super.put(key, value);
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        return super.equals(object);
    }
}
