package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import java.util.Objects;

final class bo extends ag {
    final bp a;

    bo(bp bpVar, String str, long j) {
        super(str, j);
        Objects.requireNonNull(bpVar);
        this.a = bpVar;
    }

    @Override
    final Task b(Activity activity, Bundle bundle) {
        bp bpVar = this.a;
        bundle.putLong("cloud.prj", bpVar.e);
        return bpVar.c.c(activity, bundle);
    }
}
