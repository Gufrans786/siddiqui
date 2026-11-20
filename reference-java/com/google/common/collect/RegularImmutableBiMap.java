package com.google.common.collect;

import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    static final RegularImmutableBiMap<Object, Object> EMPTY = new RegularImmutableBiMap<>();
    final transient Object[] alternatingKeysAndValues;
    private final transient RegularImmutableBiMap<V, K> inverse;

    @CheckForNull
    private final transient Object keyHashTable;
    private final transient int keyOffset;
    private final transient int size;

    @Override
    boolean isPartialView() {
        return false;
    }

    private RegularImmutableBiMap() {
        this.keyHashTable = null;
        this.alternatingKeysAndValues = new Object[0];
        this.keyOffset = 0;
        this.size = 0;
        this.inverse = this;
    }

    RegularImmutableBiMap(Object[] alternatingKeysAndValues, int size) {
        this.alternatingKeysAndValues = alternatingKeysAndValues;
        this.size = size;
        this.keyOffset = 0;
        int iChooseTableSize = size >= 2 ? ImmutableSet.chooseTableSize(size) : 0;
        this.keyHashTable = RegularImmutableMap.createHashTableOrThrow(alternatingKeysAndValues, size, iChooseTableSize, 0);
        this.inverse = new RegularImmutableBiMap<>(RegularImmutableMap.createHashTableOrThrow(alternatingKeysAndValues, size, iChooseTableSize, 1), alternatingKeysAndValues, size, this);
    }

    private RegularImmutableBiMap(@CheckForNull Object valueHashTable, Object[] alternatingKeysAndValues, int size, RegularImmutableBiMap<V, K> inverse) {
        this.keyHashTable = valueHashTable;
        this.alternatingKeysAndValues = alternatingKeysAndValues;
        this.keyOffset = 1;
        this.size = size;
        this.inverse = inverse;
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public ImmutableBiMap<V, K> inverse() {
        return this.inverse;
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        V v = (V) RegularImmutableMap.get(this.keyHashTable, this.alternatingKeysAndValues, this.size, this.keyOffset, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new RegularImmutableMap.EntrySet(this, this.alternatingKeysAndValues, this.keyOffset, this.size);
    }

    @Override
    ImmutableSet<K> createKeySet() {
        return new RegularImmutableMap.KeySet(this, new RegularImmutableMap.KeysOrValuesAsList(this.alternatingKeysAndValues, this.keyOffset, this.size));
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
