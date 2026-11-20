package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingMultimap<K, V> extends ForwardingObject implements Multimap<K, V> {
    @Override
    public abstract Multimap<K, V> delegate();

    protected ForwardingMultimap() {
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        return delegate().asMap();
    }

    @Override
    public void clear() {
        delegate().clear();
    }

    @Override
    public boolean containsEntry(@CheckForNull Object key, @CheckForNull Object value) {
        return delegate().containsEntry(key, value);
    }

    @Override
    public boolean containsKey(@CheckForNull Object key) {
        return delegate().containsKey(key);
    }

    @Override
    public boolean containsValue(@CheckForNull Object value) {
        return delegate().containsValue(value);
    }

    @Override
    public Collection<Map.Entry<K, V>> entries() {
        return delegate().entries();
    }

    public Collection<V> get(@ParametricNullness K key) {
        return delegate().get(key);
    }

    @Override
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override
    public Multiset<K> keys() {
        return delegate().keys();
    }

    @Override
    public Set<K> keySet() {
        return delegate().keySet();
    }

    @Override
    public boolean put(@ParametricNullness K key, @ParametricNullness V value) {
        return delegate().put(key, value);
    }

    @Override
    public boolean putAll(@ParametricNullness K key, Iterable<? extends V> values) {
        return delegate().putAll(key, values);
    }

    @Override
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        return delegate().putAll(multimap);
    }

    @Override
    public boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
        return delegate().remove(key, value);
    }

    public Collection<V> removeAll(@CheckForNull Object key) {
        return delegate().removeAll(key);
    }

    public Collection<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return delegate().replaceValues(key, values);
    }

    @Override
    public int size() {
        return delegate().size();
    }

    @Override
    public Collection<V> values() {
        return delegate().values();
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        return object == this || delegate().equals(object);
    }

    @Override
    public int hashCode() {
        return delegate().hashCode();
    }
}
