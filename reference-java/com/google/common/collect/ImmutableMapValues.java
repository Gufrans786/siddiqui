package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class ImmutableMapValues<K, V> extends ImmutableCollection<V> {
    private final ImmutableMap<K, V> map;

    @Override
    boolean isPartialView() {
        return true;
    }

    ImmutableMapValues(ImmutableMap<K, V> map) {
        this.map = map;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    public UnmodifiableIterator<V> iterator() {
        return new UnmodifiableIterator<V>() {
            final UnmodifiableIterator<Map.Entry<K, V>> entryItr;

            {
                this.entryItr = ImmutableMapValues.this.map.entrySet().iterator();
            }

            @Override
            public boolean hasNext() {
                return this.entryItr.hasNext();
            }

            @Override
            public V next() {
                return this.entryItr.next().getValue();
            }
        };
    }

    @Override
    public boolean contains(@CheckForNull Object object) {
        return object != null && Iterators.contains(iterator(), object);
    }

    @Override
    public ImmutableList<V> asList() {
        final ImmutableList<Map.Entry<K, V>> immutableListAsList = this.map.entrySet().asList();
        return new ImmutableList<V>(this) {
            final ImmutableMapValues this$0;

            @Override
            boolean isPartialView() {
                return true;
            }

            {
                this.this$0 = this;
            }

            @Override
            public V get(int i) {
                return (V) ((Map.Entry) immutableListAsList.get(i)).getValue();
            }

            @Override
            public int size() {
                return immutableListAsList.size();
            }

            @Override
            Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this.map);
    }

    private static class SerializedForm<V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<?, V> map;

        SerializedForm(ImmutableMap<?, V> map) {
            this.map = map;
        }

        Object readResolve() {
            return this.map.values();
        }
    }
}
