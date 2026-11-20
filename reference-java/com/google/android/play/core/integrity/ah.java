package com.google.android.play.core.integrity;

import android.content.Context;

final class ah {
    private static z a;

    static synchronized z a(Context context) {
        if (a == null) {
            y yVar = new y(null);
            yVar.a(com.google.android.play.integrity.internal.ag.a(context));
            a = yVar.b();
        }
        return a;
    }
}
