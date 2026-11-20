package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

class bn extends com.google.android.play.integrity.internal.j {
    final TaskCompletionSource a;
    final bs b;

    bn(bs bsVar, TaskCompletionSource taskCompletionSource) {
        Objects.requireNonNull(bsVar);
        this.b = bsVar;
        this.a = taskCompletionSource;
    }

    @Override
    public final void b(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }

    @Override
    public void c(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }

    @Override
    public final void d(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }

    @Override
    public void e(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }
}
