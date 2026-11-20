package com.google.common.cache;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@ElementTypesAreNonnullByDefault
public interface LoadingCache<K, V> extends Cache<K, V>, Function<K, V> {
    @Override
    @Deprecated
    V apply(K key);

    @Override
    ConcurrentMap<K, V> asMap();

    V get(K key) throws ExecutionException;

    ImmutableMap<K, V> getAll(Iterable<? extends K> keys) throws ExecutionException;

    V getUnchecked(K key);

    void refresh(K key);
}
