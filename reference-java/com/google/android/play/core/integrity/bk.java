package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

final class bk extends br {
    final int a;
    final long b;
    final TaskCompletionSource c;
    final bs d;

    bk(bs bsVar, TaskCompletionSource taskCompletionSource, int i, long j, TaskCompletionSource taskCompletionSource2) {
        super(bsVar, taskCompletionSource);
        this.a = i;
        this.b = j;
        this.c = taskCompletionSource2;
        Objects.requireNonNull(bsVar);
        this.d = bsVar;
    }

    @Override
    protected final void b() {
        bs bsVar = this.d;
        if (bs.m(bsVar)) {
            super.a(new StandardIntegrityException(-2, false, null));
            return;
        }
        int i = this.a;
        if (bs.l(bsVar, i)) {
            super.a(new StandardIntegrityException(-14, false, null));
            return;
        }
        try {
            ((com.google.android.play.integrity.internal.i) bsVar.a.e()).e(bs.b(bsVar, this.b, i), new bq(bsVar, this.c));
        } catch (RemoteException e) {
            this.d.b.c(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.b));
            this.c.trySetException(new StandardIntegrityException(-100, false, e));
        }
    }
}
