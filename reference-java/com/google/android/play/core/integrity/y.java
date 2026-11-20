package com.google.android.play.core.integrity;

import android.content.Context;

final class y implements ae {
    private Context a;

    private y() {
        throw null;
    }

    y(aa aaVar) {
    }

    @Override
    public final z b() {
        com.google.android.play.integrity.internal.ay.a(this.a, Context.class);
        return new z(this.a);
    }

    public final y a(Context context) {
        context.getClass();
        this.a = context;
        return this;
    }
}
