package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class ImmutableMapEntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
    abstract ImmutableMap<K, V> map();

    static final class RegularEntrySet<K, V> extends ImmutableMapEntrySet<K, V> {
        private final transient ImmutableList<Map.Entry<K, V>> entries;
        private final transient ImmutableMap<K, V> map;

        RegularEntrySet(ImmutableMap<K, V> map, Map.Entry<K, V>[] entries) {
            this(map, ImmutableList.asImmutableList(entries));
        }

        RegularEntrySet(ImmutableMap<K, V> map, ImmutableList<Map.Entry<K, V>> entries) {
            this.map = map;
            this.entries = entries;
        }

        @Override
        ImmutableMap<K, V> map() {
            return this.map;
        }

        @Override
        int copyIntoArray(Object[] dst, int offset) {
            return this.entries.copyIntoArray(dst, offset);
        }

        @Override
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return this.entries.iterator();
        }

        @Override
        ImmutableList<Map.Entry<K, V>> createAsList() {
            return this.entries;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    ImmutableMapEntrySet() {
    }

    @Override
    public int size() {
        return map().size();
    }

    @Override
    public boolean contains(@CheckForNull Object object) {
        if (object instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) object;
            V v = map().get(entry.getKey());
            if (v != null && v.equals(entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override
    boolean isPartialView() {
        return map().isPartialView();
    }

    @Override
    boolean isHashCodeFast() {
        return map().isHashCodeFast();
    }

    @Override
    public int hashCode() {
        return map().hashCode();
    }

    @Override
    Object writeReplace() {
        return new EntrySetSerializedForm(map());
    }

    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException("Use EntrySetSerializedForm");
    }

    private static class EntrySetSerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, V> map;

        EntrySetSerializedForm(ImmutableMap<K, V> map) {
            this.map = map;
        }

        Object readResolve() {
            return this.map.entrySet();
        }
    }
}
