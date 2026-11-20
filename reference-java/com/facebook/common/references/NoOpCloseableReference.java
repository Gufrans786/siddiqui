package com.facebook.common.references;

public class NoOpCloseableReference<T> extends CloseableReference<T> {
    @Override
    public CloseableReference<T> mo232clone() {
        return this;
    }

    @Override
    public CloseableReference<T> cloneOrNull() {
        return this;
    }

    @Override
    public void close() {
    }

    @Override
    public boolean isValid() {
        return true;
    }

    NoOpCloseableReference(T t) {
        super(t, null, null, null, false);
    }
}
