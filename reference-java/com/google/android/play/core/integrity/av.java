package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.gms.tasks.Task;

final class av extends IntegrityTokenResponse {
    private final String a;
    private final ag b;
    private final long c;
    private boolean d;
    private final Object e = new Object();

    av(String str, long j, ag agVar) {
        this.a = str;
        this.b = agVar;
        this.c = j;
    }

    final long a() {
        return this.c;
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
        return this.b.a(activity, i);
    }

    @Override
    public final String token() {
        return this.a;
    }
}
