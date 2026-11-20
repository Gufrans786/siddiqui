package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Primitives;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public final class MutableClassToInstanceMap<B> extends ForwardingMap<Class<? extends B>, B> implements ClassToInstanceMap<B>, Serializable {
    private final Map<Class<? extends B>, B> delegate;

    public static <B> MutableClassToInstanceMap<B> create() {
        return new MutableClassToInstanceMap<>(new HashMap());
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> backingMap) {
        return new MutableClassToInstanceMap<>(backingMap);
    }

    private MutableClassToInstanceMap(Map<Class<? extends B>, B> delegate) {
        this.delegate = (Map) Preconditions.checkNotNull(delegate);
    }

    @Override
    public Map<Class<? extends B>, B> delegate() {
        return this.delegate;
    }

    public static <B> Map.Entry<Class<? extends B>, B> checkedEntry(final Map.Entry<Class<? extends B>, B> entry) {
        return new ForwardingMapEntry<Class<? extends B>, B>() {
            @Override
            public Map.Entry<Class<? extends B>, B> delegate() {
                return entry;
            }

            @Override
            @ParametricNullness
            public B setValue(@ParametricNullness B b) {
                MutableClassToInstanceMap.cast(getKey(), b);
                return (B) super.setValue(b);
            }
        };
    }

    @Override
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new ForwardingSet<Map.Entry<Class<? extends B>, B>>() {
            @Override
            public Set<Map.Entry<Class<? extends B>, B>> delegate() {
                return MutableClassToInstanceMap.this.delegate().entrySet();
            }

            @Override
            public Iterator<Map.Entry<Class<? extends B>, B>> iterator() {
                return new TransformedIterator<Map.Entry<Class<? extends B>, B>, Map.Entry<Class<? extends B>, B>>(delegate().iterator()) {
                    @Override
                    public Map.Entry<Class<? extends B>, B> transform(Map.Entry<Class<? extends B>, B> from) {
                        return MutableClassToInstanceMap.checkedEntry(from);
                    }
                };
            }

            @Override
            public Object[] toArray() {
                return standardToArray();
            }

            @Override
            public <T> T[] toArray(T[] tArr) {
                return (T[]) standardToArray(tArr);
            }
        };
    }

    @Override
    @CheckForNull
    public B put(Class<? extends B> cls, @ParametricNullness B b) {
        cast(cls, b);
        return (B) super.put(cls, b);
    }

    @Override
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            cast((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    @Override
    @CheckForNull
    public <T extends B> T putInstance(Class<T> cls, @ParametricNullness T t) {
        return (T) cast(cls, put((Class<? extends T>) cls, t));
    }

    @Override
    @CheckForNull
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) cast(cls, get(cls));
    }

    @CheckForNull
    public static <T> T cast(Class<T> cls, @CheckForNull Object obj) {
        return (T) Primitives.wrap(cls).cast(obj);
    }

    private Object writeReplace() {
        return new SerializedForm(delegate());
    }

    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    private static final class SerializedForm<B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Map<Class<? extends B>, B> backingMap;

        SerializedForm(Map<Class<? extends B>, B> backingMap) {
            this.backingMap = backingMap;
        }

        Object readResolve() {
            return MutableClassToInstanceMap.create(this.backingMap);
        }
    }
}
