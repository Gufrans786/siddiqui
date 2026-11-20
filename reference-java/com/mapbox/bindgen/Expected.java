package com.mapbox.bindgen;

public class Expected<E, V> {
    private final E error;
    private final V value;

    @FunctionalInterface
    public interface Action<T> {
        void run(T t);
    }

    @FunctionalInterface
    public interface Transformer<T, R> {
        R invoke(T t);
    }

    Expected(E e, V v) {
        this.value = v;
        this.error = e;
    }

    public boolean isValue() {
        return this.value != null;
    }

    public boolean isError() {
        return !isValue();
    }

    public V getValue() {
        return this.value;
    }

    public E getError() {
        return this.error;
    }

    public <R> R fold(Transformer<E, R> transformer, Transformer<V, R> transformer2) {
        if (isValue()) {
            return transformer2.invoke(getValue());
        }
        return transformer.invoke(getError());
    }

    public <E1, V1> Expected<E1, V1> map(Transformer<E, E1> transformer, Transformer<V, V1> transformer2) {
        if (isValue()) {
            return ExpectedFactory.createValue(transformer2.invoke(getValue()));
        }
        return ExpectedFactory.createError(transformer.invoke(getError()));
    }

    public <V1> Expected<E, V1> mapValue(Transformer<V, V1> transformer) {
        if (isValue()) {
            return ExpectedFactory.createValue(transformer.invoke(getValue()));
        }
        return ExpectedFactory.createError(getError());
    }

    public <E1> Expected<E1, V> mapError(Transformer<E, E1> transformer) {
        if (isValue()) {
            return ExpectedFactory.createValue(getValue());
        }
        return ExpectedFactory.createError(transformer.invoke(getError()));
    }

    public Expected<E, V> onValue(Action<V> action) {
        if (isValue()) {
            action.run(getValue());
        }
        return this;
    }

    public Expected<E, V> onError(Action<E> action) {
        if (isError()) {
            action.run(getError());
        }
        return this;
    }

    public V getValueOrElse(Transformer<E, V> transformer) {
        if (isValue()) {
            return getValue();
        }
        return transformer.invoke(getError());
    }
}
