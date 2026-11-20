package com.google.common.collect;

import com.google.common.base.Predicate;
import java.util.List;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class FilteredKeyListMultimap<K, V> extends FilteredKeyMultimap<K, V> implements ListMultimap<K, V> {
    FilteredKeyListMultimap(ListMultimap<K, V> unfiltered, Predicate<? super K> keyPredicate) {
        super(unfiltered, keyPredicate);
    }

    @Override
    public ListMultimap<K, V> unfiltered() {
        return (ListMultimap) super.unfiltered();
    }

    @Override
    public List<V> get(@ParametricNullness K key) {
        return (List) super.get((Object) key);
    }

    @Override
    public List<V> removeAll(@CheckForNull Object key) {
        return (List) super.removeAll(key);
    }

    @Override
    public List<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return (List) super.replaceValues((Object) key, (Iterable) values);
    }
}
