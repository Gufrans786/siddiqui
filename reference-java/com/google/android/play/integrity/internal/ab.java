package com.google.android.play.integrity.internal;

import java.util.Objects;

final class ab extends t {
    final ac a;

    ab(ac acVar) {
        Objects.requireNonNull(acVar);
        this.a = acVar;
    }

    @Override
    public final void b() {
        ae aeVar = this.a.a;
        ae.t(aeVar);
        aeVar.o = null;
        aeVar.h = false;
    }
}
