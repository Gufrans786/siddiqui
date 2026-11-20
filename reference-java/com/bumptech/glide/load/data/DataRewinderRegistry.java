package com.bumptech.glide.load.data;

import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Map;

public class DataRewinderRegistry {
    private static final DataRewinder.Factory<?> DEFAULT_FACTORY = new DataRewinder.Factory<Object>() {
        @Override
        public DataRewinder<Object> build(Object obj) {
            return new DefaultRewinder(obj);
        }

        @Override
        public Class<Object> getDataClass() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };
    private final Map<Class<?>, DataRewinder.Factory<?>> rewinders = new HashMap();

    public synchronized void register(DataRewinder.Factory<?> factory) {
        this.rewinders.put(factory.getDataClass(), factory);
    }

    public synchronized <T> DataRewinder<T> build(T t) {
        DataRewinder.Factory<?> factory;
        Preconditions.checkNotNull(t);
        factory = this.rewinders.get(t.getClass());
        if (factory == null) {
            for (DataRewinder.Factory<?> factory2 : this.rewinders.values()) {
                if (factory2.getDataClass().isAssignableFrom(t.getClass())) {
                    factory = factory2;
                    break;
                }
            }
        }
        if (factory == null) {
            factory = DEFAULT_FACTORY;
        }
        return (DataRewinder<T>) factory.build(t);
    }

    private static final class DefaultRewinder implements DataRewinder<Object> {
        private final Object data;

        @Override
        public void cleanup() {
        }

        DefaultRewinder(Object obj) {
            this.data = obj;
        }

        @Override
        public Object rewindAndGet() {
            return this.data;
        }
    }
}
