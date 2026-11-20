package com.google.android.play.integrity.internal;

import android.content.Context;

public final class ag {
    public static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }
}
