package com.google.common.collect;

import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public interface BiMap<K, V> extends Map<K, V> {
    @CheckForNull
    V forcePut(@ParametricNullness K key, @ParametricNullness V value);

    BiMap<V, K> inverse();

    @CheckForNull
    V put(@ParametricNullness K key, @ParametricNullness V value);

    void putAll(Map<? extends K, ? extends V> map);

    @Override
    Set<V> values();
}
