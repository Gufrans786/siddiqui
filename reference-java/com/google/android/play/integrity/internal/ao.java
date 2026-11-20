package com.google.android.play.integrity.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Objects;

final class ao extends ap {
    final transient int a;
    final transient int b;
    final ap c;

    ao(ap apVar, int i, int i2) {
        Objects.requireNonNull(apVar);
        this.c = apVar;
        this.a = i;
        this.b = i2;
    }

    @Override
    final int b() {
        return this.c.c() + this.a + this.b;
    }

    @Override
    final int c() {
        return this.c.c() + this.a;
    }

    @Override
    final Object[] e() {
        return this.c.e();
    }

    @Override
    public final ap subList(int i, int i2) {
        aj.c(i, i2, this.b);
        int i3 = this.a;
        return this.c.subList(i + i3, i2 + i3);
    }

    @Override
    public final Object get(int i) {
        aj.a(i, this.b, FirebaseAnalytics.Param.INDEX);
        return this.c.get(i + this.a);
    }

    @Override
    public final int size() {
        return this.b;
    }

    @Override
    public final List subList(int i, int i2) {
        return subList(i, i2);
    }
}
