package com.google.android.play.integrity.internal;

public final class ax implements aw {
    private final Object a;

    private ax(Object obj) {
        this.a = obj;
    }

    public static aw b(Object obj) {
        if (obj != null) {
            return new ax(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override
    public final Object a() {
        return this.a;
    }
}
