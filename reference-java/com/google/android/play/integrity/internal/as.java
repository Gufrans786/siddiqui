package com.google.android.play.integrity.internal;

import java.util.Iterator;

final class as extends aq {
    static final as a;
    private static final Object[] d;
    final transient Object[] b;
    final transient Object[] c;

    static {
        Object[] objArr = new Object[0];
        d = objArr;
        a = new as(objArr, 0, objArr, 0, 0);
    }

    as(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.b = objArr;
        this.c = objArr2;
    }

    @Override
    final int a(Object[] objArr, int i) {
        System.arraycopy(this.b, 0, objArr, 0, 0);
        return 0;
    }

    @Override
    final int b() {
        return 0;
    }

    @Override
    final int c() {
        return 0;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.c.length;
        return false;
    }

    @Override
    public final at iterator() {
        return f().listIterator(0);
    }

    @Override
    final Object[] e() {
        return this.b;
    }

    @Override
    final ap g() {
        int i = ap.d;
        return ar.a;
    }

    @Override
    public final int hashCode() {
        return 0;
    }

    @Override
    final boolean i() {
        return true;
    }

    @Override
    public final Iterator iterator() {
        return f().listIterator(0);
    }

    @Override
    public final int size() {
        return 0;
    }
}
