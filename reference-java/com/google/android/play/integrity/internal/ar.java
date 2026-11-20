package com.google.android.play.integrity.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

final class ar extends ap {
    static final ap a = new ar(new Object[0], 0);
    final transient Object[] b;

    ar(Object[] objArr, int i) {
        this.b = objArr;
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
    final Object[] e() {
        return this.b;
    }

    @Override
    public final Object get(int i) {
        aj.a(i, 0, FirebaseAnalytics.Param.INDEX);
        return Objects.requireNonNull(this.b[i]);
    }

    @Override
    public final int size() {
        return 0;
    }
}
