package com.google.common.collect;

import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingSetMultimap<K, V> extends ForwardingMultimap<K, V> implements SetMultimap<K, V> {
    @Override
    public abstract SetMultimap<K, V> delegate();

    @Override
    public Set<Map.Entry<K, V>> entries() {
        return delegate().entries();
    }

    @Override
    public Set<V> get(@ParametricNullness K key) {
        return delegate().get((Object) key);
    }

    @Override
    public Set<V> removeAll(@CheckForNull Object key) {
        return delegate().removeAll(key);
    }

    @Override
    public Set<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return delegate().replaceValues((Object) key, (Iterable) values);
    }
}
