package org.parceler.converter;

import java.util.TreeMap;

public abstract class TreeMapParcelConverter<K, V> extends MapParcelConverter<K, V, TreeMap<K, V>> {
    @Override
    public TreeMap<K, V> createMap() {
        return new TreeMap<>();
    }
}
