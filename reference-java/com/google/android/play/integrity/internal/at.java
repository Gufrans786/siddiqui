package com.google.android.play.integrity.internal;

import java.util.Iterator;

public abstract class at implements Iterator {
    protected at() {
    }

    @Override
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
