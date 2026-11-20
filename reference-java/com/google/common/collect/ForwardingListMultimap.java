package com.google.common.collect;

import java.util.List;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingListMultimap<K, V> extends ForwardingMultimap<K, V> implements ListMultimap<K, V> {
    @Override
    public abstract ListMultimap<K, V> delegate();

    protected ForwardingListMultimap() {
    }

    @Override
    public List<V> get(@ParametricNullness K key) {
        return delegate().get((Object) key);
    }

    @Override
    public List<V> removeAll(@CheckForNull Object key) {
        return delegate().removeAll(key);
    }

    @Override
    public List<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return delegate().replaceValues((Object) key, (Iterable) values);
    }
}
