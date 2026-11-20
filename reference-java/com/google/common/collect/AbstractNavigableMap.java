package com.google.common.collect;

import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractNavigableMap<K, V> extends Maps.IteratorBasedAbstractMap<K, V> implements NavigableMap<K, V> {
    abstract Iterator<Map.Entry<K, V>> descendingEntryIterator();

    @Override
    @CheckForNull
    public abstract V get(@CheckForNull Object key);

    AbstractNavigableMap() {
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> firstEntry() {
        return (Map.Entry) Iterators.getNext(entryIterator(), null);
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lastEntry() {
        return (Map.Entry) Iterators.getNext(descendingEntryIterator(), null);
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> pollFirstEntry() {
        return (Map.Entry) Iterators.pollNext(entryIterator());
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> pollLastEntry() {
        return (Map.Entry) Iterators.pollNext(descendingEntryIterator());
    }

    @Override
    @ParametricNullness
    public K firstKey() {
        Map.Entry<K, V> entryFirstEntry = firstEntry();
        if (entryFirstEntry == null) {
            throw new NoSuchElementException();
        }
        return entryFirstEntry.getKey();
    }

    @Override
    @ParametricNullness
    public K lastKey() {
        Map.Entry<K, V> entryLastEntry = lastEntry();
        if (entryLastEntry == null) {
            throw new NoSuchElementException();
        }
        return entryLastEntry.getKey();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lowerEntry(@ParametricNullness K key) {
        return headMap(key, false).lastEntry();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> floorEntry(@ParametricNullness K key) {
        return headMap(key, true).lastEntry();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> ceilingEntry(@ParametricNullness K key) {
        return tailMap(key, true).firstEntry();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> higherEntry(@ParametricNullness K key) {
        return tailMap(key, false).firstEntry();
    }

    @Override
    @CheckForNull
    public K lowerKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(lowerEntry(k));
    }

    @Override
    @CheckForNull
    public K floorKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(floorEntry(k));
    }

    @Override
    @CheckForNull
    public K ceilingKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(ceilingEntry(k));
    }

    @Override
    @CheckForNull
    public K higherKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(higherEntry(k));
    }

    @Override
    public SortedMap<K, V> subMap(@ParametricNullness K fromKey, @ParametricNullness K toKey) {
        return subMap(fromKey, true, toKey, false);
    }

    @Override
    public SortedMap<K, V> headMap(@ParametricNullness K toKey) {
        return headMap(toKey, false);
    }

    @Override
    public SortedMap<K, V> tailMap(@ParametricNullness K fromKey) {
        return tailMap(fromKey, true);
    }

    @Override
    public NavigableSet<K> navigableKeySet() {
        return new Maps.NavigableKeySet(this);
    }

    @Override
    public Set<K> keySet() {
        return navigableKeySet();
    }

    @Override
    public NavigableSet<K> descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    @Override
    public NavigableMap<K, V> descendingMap() {
        return new DescendingMap();
    }

    private final class DescendingMap extends Maps.DescendingMap<K, V> {
        private DescendingMap() {
        }

        @Override
        NavigableMap<K, V> forward() {
            return AbstractNavigableMap.this;
        }

        @Override
        Iterator<Map.Entry<K, V>> entryIterator() {
            return AbstractNavigableMap.this.descendingEntryIterator();
        }
    }
}
