package com.google.common.cache;

import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingObject;
import com.google.common.collect.ImmutableMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingCache<K, V> extends ForwardingObject implements Cache<K, V> {
    @Override
    public abstract Cache<K, V> delegate();

    protected ForwardingCache() {
    }

    @Override
    @CheckForNull
    public V getIfPresent(Object key) {
        return delegate().getIfPresent(key);
    }

    @Override
    public V get(K key, Callable<? extends V> valueLoader) throws ExecutionException {
        return delegate().get(key, valueLoader);
    }

    @Override
    public ImmutableMap<K, V> getAllPresent(Iterable<? extends Object> keys) {
        return delegate().getAllPresent(keys);
    }

    @Override
    public void put(K key, V value) {
        delegate().put(key, value);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> m) {
        delegate().putAll(m);
    }

    @Override
    public void invalidate(Object key) {
        delegate().invalidate(key);
    }

    @Override
    public void invalidateAll(Iterable<? extends Object> keys) {
        delegate().invalidateAll(keys);
    }

    @Override
    public void invalidateAll() {
        delegate().invalidateAll();
    }

    @Override
    public long size() {
        return delegate().size();
    }

    @Override
    public CacheStats stats() {
        return delegate().stats();
    }

    @Override
    public ConcurrentMap<K, V> asMap() {
        return delegate().asMap();
    }

    @Override
    public void cleanUp() {
        delegate().cleanUp();
    }

    public static abstract class SimpleForwardingCache<K, V> extends ForwardingCache<K, V> {
        private final Cache<K, V> delegate;

        protected SimpleForwardingCache(Cache<K, V> delegate) {
            this.delegate = (Cache) Preconditions.checkNotNull(delegate);
        }

        @Override
        public final Cache<K, V> delegate() {
            return this.delegate;
        }
    }
}
