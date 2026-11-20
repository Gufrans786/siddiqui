package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

abstract class br extends com.google.android.play.integrity.internal.t {
    final bs g;

    br(bs bsVar, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        Objects.requireNonNull(bsVar);
        this.g = bsVar;
    }

    @Override
    public final void a(Exception exc) {
        if (!(exc instanceof com.google.android.play.integrity.internal.af)) {
            super.a(exc);
        } else if (bs.m(this.g)) {
            super.a(new StandardIntegrityException(-2, false, exc));
        } else {
            super.a(new StandardIntegrityException(-9, false, exc));
        }
    }
}
