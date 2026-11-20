package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingSortedSetMultimap<K, V> extends ForwardingSetMultimap<K, V> implements SortedSetMultimap<K, V> {
    @Override
    public abstract SortedSetMultimap<K, V> delegate();

    protected ForwardingSortedSetMultimap() {
    }

    @Override
    public SortedSet<V> get(@ParametricNullness K key) {
        return delegate().get((Object) key);
    }

    @Override
    public SortedSet<V> removeAll(@CheckForNull Object key) {
        return delegate().removeAll(key);
    }

    @Override
    public SortedSet<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return delegate().replaceValues((Object) key, (Iterable) values);
    }

    @Override
    @CheckForNull
    public Comparator<? super V> valueComparator() {
        return delegate().valueComparator();
    }
}
