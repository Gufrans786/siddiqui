package com.google.common.cache;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@ElementTypesAreNonnullByDefault
public abstract class AbstractLoadingCache<K, V> extends AbstractCache<K, V> implements LoadingCache<K, V> {
    protected AbstractLoadingCache() {
    }

    @Override
    public V getUnchecked(K key) {
        try {
            return get(key);
        } catch (ExecutionException e) {
            throw new UncheckedExecutionException(e.getCause());
        }
    }

    @Override
    public ImmutableMap<K, V> getAll(Iterable<? extends K> keys) throws ExecutionException {
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        for (K k : keys) {
            if (!linkedHashMapNewLinkedHashMap.containsKey(k)) {
                linkedHashMapNewLinkedHashMap.put(k, get(k));
            }
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    @Override
    public final V apply(K key) {
        return getUnchecked(key);
    }

    @Override
    public void refresh(K key) {
        throw new UnsupportedOperationException();
    }
}
