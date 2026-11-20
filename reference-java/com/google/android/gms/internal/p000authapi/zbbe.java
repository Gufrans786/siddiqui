package com.google.android.gms.internal.p000authapi;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.NoSuchElementException;

abstract class zbbe extends zbbl {
    private final int zba;
    private int zbb;

    protected zbbe(int i, int i2) {
        zbbc.zbb(i2, i, FirebaseAnalytics.Param.INDEX);
        this.zba = i;
        this.zbb = i2;
    }

    @Override
    public final boolean hasNext() {
        return this.zbb < this.zba;
    }

    @Override
    public final boolean hasPrevious() {
        return this.zbb > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.zbb;
        this.zbb = i + 1;
        return zba(i);
    }

    @Override
    public final int nextIndex() {
        return this.zbb;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.zbb - 1;
        this.zbb = i;
        return zba(i);
    }

    @Override
    public final int previousIndex() {
        return this.zbb - 1;
    }

    protected abstract Object zba(int i);
}
