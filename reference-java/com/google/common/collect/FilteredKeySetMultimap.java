package com.google.common.collect;

import com.google.common.base.Predicate;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class FilteredKeySetMultimap<K, V> extends FilteredKeyMultimap<K, V> implements FilteredSetMultimap<K, V> {
    FilteredKeySetMultimap(SetMultimap<K, V> unfiltered, Predicate<? super K> keyPredicate) {
        super(unfiltered, keyPredicate);
    }

    @Override
    public SetMultimap<K, V> unfiltered() {
        return (SetMultimap) this.unfiltered;
    }

    @Override
    public Set<V> get(@ParametricNullness K key) {
        return (Set) super.get((Object) key);
    }

    @Override
    public Set<V> removeAll(@CheckForNull Object key) {
        return (Set) super.removeAll(key);
    }

    @Override
    public Set<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        return (Set) super.replaceValues((Object) key, (Iterable) values);
    }

    @Override
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override
    public Set<Map.Entry<K, V>> createEntries() {
        return new EntrySet();
    }

    class EntrySet extends FilteredKeyMultimap<K, V>.Entries implements Set<Map.Entry<K, V>> {
        EntrySet() {
            super();
        }

        @Override
        public int hashCode() {
            return Sets.hashCodeImpl(this);
        }

        @Override
        public boolean equals(@CheckForNull Object o) {
            return Sets.equalsImpl(this, o);
        }
    }
}
