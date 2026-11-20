package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

final class bj extends com.google.android.play.integrity.internal.t {
    final Context a;
    final bs b;

    bj(bs bsVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.a = context;
        Objects.requireNonNull(bsVar);
        this.b = bsVar;
    }

    @Override
    protected final void b() {
        this.b.d.trySetResult(Integer.valueOf(com.google.android.play.integrity.internal.ai.a(this.a)));
    }
}
