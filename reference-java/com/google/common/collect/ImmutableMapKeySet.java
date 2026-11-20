package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class ImmutableMapKeySet<K, V> extends IndexedImmutableSet<K> {
    private final ImmutableMap<K, V> map;

    @Override
    boolean isPartialView() {
        return true;
    }

    ImmutableMapKeySet(ImmutableMap<K, V> map) {
        this.map = map;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    public UnmodifiableIterator<K> iterator() {
        return this.map.keyIterator();
    }

    @Override
    public boolean contains(@CheckForNull Object object) {
        return this.map.containsKey(object);
    }

    @Override
    K get(int index) {
        return this.map.entrySet().asList().get(index).getKey();
    }

    @Override
    Object writeReplace() {
        return new KeySetSerializedForm(this.map);
    }

    private static class KeySetSerializedForm<K> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, ?> map;

        KeySetSerializedForm(ImmutableMap<K, ?> map) {
            this.map = map;
        }

        Object readResolve() {
            return this.map.keySet();
        }
    }
}
