package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

final class w extends t {
    final TaskCompletionSource a;
    final t b;
    final ae c;

    w(ae aeVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, t tVar) {
        super(taskCompletionSource);
        this.a = taskCompletionSource2;
        this.b = tVar;
        Objects.requireNonNull(aeVar);
        this.c = aeVar;
    }

    @Override
    public final void b() {
        ae aeVar = this.c;
        synchronized (aeVar.g) {
            ae.p(aeVar, this.a);
            if (aeVar.m.getAndIncrement() > 0) {
                aeVar.c.d("Already connected to the service.", new Object[0]);
            }
            ae.r(aeVar, this.b);
        }
    }
}
