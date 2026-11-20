package com.google.android.play.core.integrity;

import android.content.Context;

final class bb {
    private static ac a;

    static synchronized ac a(Context context, boolean z) {
        if (a == null) {
            ab abVar = new ab(null);
            abVar.a(com.google.android.play.integrity.internal.ag.a(context));
            a = abVar.b();
        }
        return a;
    }
}
