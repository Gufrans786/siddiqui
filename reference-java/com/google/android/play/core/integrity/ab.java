package com.google.android.play.core.integrity;

import android.content.Context;

final class ab implements ba {
    private Context a;

    private ab() {
        throw null;
    }

    ab(ad adVar) {
    }

    @Override
    public final ac b() {
        com.google.android.play.integrity.internal.ay.a(this.a, Context.class);
        return new ac(this.a);
    }

    public final ab a(Context context) {
        context.getClass();
        this.a = context;
        return this;
    }
}
