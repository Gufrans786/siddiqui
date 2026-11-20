package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Objects;

final class ac implements ServiceConnection {
    final ae a;

    ac(ae aeVar, ad adVar) {
        Objects.requireNonNull(aeVar);
        this.a = aeVar;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ae aeVar = this.a;
        aeVar.c.d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        aeVar.c().post(new aa(this, iBinder));
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        ae aeVar = this.a;
        aeVar.c.d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        aeVar.c().post(new ab(this));
    }
}
