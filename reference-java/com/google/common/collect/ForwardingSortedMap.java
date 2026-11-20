package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingSortedMap<K, V> extends ForwardingMap<K, V> implements SortedMap<K, V> {
    @Override
    public abstract SortedMap<K, V> delegate();

    protected ForwardingSortedMap() {
    }

    @Override
    @CheckForNull
    public Comparator<? super K> comparator() {
        return delegate().comparator();
    }

    @Override
    @ParametricNullness
    public K firstKey() {
        return delegate().firstKey();
    }

    @Override
    public SortedMap<K, V> headMap(@ParametricNullness K toKey) {
        return delegate().headMap(toKey);
    }

    @Override
    @ParametricNullness
    public K lastKey() {
        return delegate().lastKey();
    }

    @Override
    public SortedMap<K, V> subMap(@ParametricNullness K fromKey, @ParametricNullness K toKey) {
        return delegate().subMap(fromKey, toKey);
    }

    @Override
    public SortedMap<K, V> tailMap(@ParametricNullness K fromKey) {
        return delegate().tailMap(fromKey);
    }

    protected class StandardKeySet extends Maps.SortedKeySet<K, V> {
        public StandardKeySet() {
            super(ForwardingSortedMap.this);
        }
    }

    static int unsafeCompare(@CheckForNull Comparator<?> comparator, @CheckForNull Object o1, @CheckForNull Object o2) {
        if (comparator == null) {
            return ((Comparable) o1).compareTo(o2);
        }
        return comparator.compare(o1, o2);
    }

    @Override
    protected boolean standardContainsKey(@CheckForNull Object key) {
        try {
            return unsafeCompare(comparator(), tailMap(key).firstKey(), key) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
        }
    }

    protected SortedMap<K, V> standardSubMap(K fromKey, K toKey) {
        Preconditions.checkArgument(unsafeCompare(comparator(), fromKey, toKey) <= 0, "fromKey must be <= toKey");
        return tailMap(fromKey).headMap(toKey);
    }
}
