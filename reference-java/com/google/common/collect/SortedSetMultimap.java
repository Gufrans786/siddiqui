package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public interface SortedSetMultimap<K, V> extends SetMultimap<K, V> {
    @Override
    Map<K, Collection<V>> asMap();

    @Override
    SortedSet<V> get(@ParametricNullness K key);

    @Override
    SortedSet<V> removeAll(@CheckForNull Object key);

    @Override
    SortedSet<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values);

    @CheckForNull
    Comparator<? super V> valueComparator();
}
