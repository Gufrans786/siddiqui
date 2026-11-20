package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingConcurrentMap<K, V> extends ForwardingMap<K, V> implements ConcurrentMap<K, V> {
    @Override
    public abstract ConcurrentMap<K, V> delegate();

    protected ForwardingConcurrentMap() {
    }

    @Override
    @CheckForNull
    public V putIfAbsent(K key, V value) {
        return delegate().putIfAbsent(key, value);
    }

    @Override
    public boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
        return delegate().remove(key, value);
    }

    @Override
    @CheckForNull
    public V replace(K key, V value) {
        return delegate().replace(key, value);
    }

    @Override
    public boolean replace(K key, V oldValue, V newValue) {
        return delegate().replace(key, oldValue, newValue);
    }
}
