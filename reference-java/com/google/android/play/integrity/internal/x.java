package com.google.android.play.integrity.internal;

import java.util.Objects;

final class x extends t {
    final ae a;

    x(ae aeVar) {
        Objects.requireNonNull(aeVar);
        this.a = aeVar;
    }

    @Override
    public final void b() {
        ae aeVar = this.a;
        synchronized (aeVar.g) {
            if (aeVar.m.get() > 0 && aeVar.m.decrementAndGet() > 0) {
                aeVar.c.d("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            if (aeVar.o != null) {
                aeVar.c.d("Unbind from service.", new Object[0]);
                aeVar.b.unbindService(aeVar.f3714n);
                aeVar.h = false;
                aeVar.o = null;
                aeVar.f3714n = null;
            }
            aeVar.x();
        }
    }
}
