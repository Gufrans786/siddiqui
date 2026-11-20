package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import java.util.Objects;

final class ap extends ag {
    final aq a;

    ap(aq aqVar, String str, long j) {
        super(str, j);
        Objects.requireNonNull(aqVar);
        this.a = aqVar;
    }

    @Override
    final Task b(Activity activity, Bundle bundle) {
        return this.a.a.b(activity, bundle);
    }
}
