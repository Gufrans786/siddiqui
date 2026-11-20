package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractSetMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements SetMultimap<K, V> {
    private static final long serialVersionUID = 7431625294878419160L;

    @Override
    public abstract Set<V> createCollection();

    protected AbstractSetMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public Set<V> createUnmodifiableEmptyCollection() {
        return Collections.emptySet();
    }

    @Override
    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override
    Collection<V> wrapCollection(@ParametricNullness K key, Collection<V> collection) {
        return new AbstractMapBasedMultimap.WrappedSet(key, (Set) collection);
    }

    @Override
    public Set<V> get(@ParametricNullness K key) {
        return (Set) super.get((Object) key);
    }

    @Override
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override
    public Set<V> removeAll(@CheckForNull Object key) {
        return (Set) super.removeAll(key);
    }

    @Override
    public Set<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return (Set) super.replaceValues((Object) key, (Iterable) values);
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override
    public boolean put(@ParametricNullness K key, @ParametricNullness V value) {
        return super.put(key, value);
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        return super.equals(object);
    }
}
