package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.gms.tasks.Task;

final class bw extends StandardIntegrityManager.StandardIntegrityToken {
    private final String a;
    private final long b;
    private final ag c;
    private boolean d;
    private final Object e = new Object();

    bw(String str, long j, ag agVar) {
        this.a = str;
        this.c = agVar;
        this.b = j;
    }

    final long a() {
        return this.b;
    }

    final void b(boolean z) {
        synchronized (this.e) {
            this.d = true;
        }
    }

    final boolean c() {
        boolean z;
        synchronized (this.e) {
            z = !this.d;
        }
        return z;
    }

    @Override
    public final Task<Integer> showDialog(Activity activity, int i) {
        return this.c.a(activity, i);
    }

    @Override
    public final String token() {
        return this.a;
    }
}
