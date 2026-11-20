package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import java.util.Objects;

final class aw extends ResultReceiver {
    final ax a;

    aw(ax axVar, Handler handler) {
        super(handler);
        Objects.requireNonNull(axVar);
        this.a = axVar;
    }

    @Override
    public final void onReceiveResult(int i, Bundle bundle) {
        if (i == 1) {
            this.a.a.trySetResult(3);
        } else if (i == 2) {
            this.a.a.trySetResult(2);
        } else {
            if (i != 3) {
                return;
            }
            this.a.a.trySetResult(1);
        }
    }
}
