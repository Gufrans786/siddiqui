package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

final class bp extends bn {
    final bs c;
    private final com.google.android.play.integrity.internal.s d;
    private final long e;

    bp(bs bsVar, TaskCompletionSource taskCompletionSource, long j) {
        super(bsVar, taskCompletionSource);
        Objects.requireNonNull(bsVar);
        this.c = bsVar;
        this.d = new com.google.android.play.integrity.internal.s("OnRequestIntegrityTokenCallback");
        this.e = j;
    }

    @Override
    public final void c(Bundle bundle) throws RemoteException {
        super.c(bundle);
        this.d.d("onRequestExpressIntegrityToken", new Object[0]);
        bs bsVar = this.c;
        ApiException apiExceptionA = bsVar.f.a(bundle);
        if (apiExceptionA != null) {
            this.a.trySetException(apiExceptionA);
            return;
        }
        long j = bundle.getLong("request.token.sid");
        bo boVar = new bo(this, bsVar.c, j);
        TaskCompletionSource taskCompletionSource = this.a;
        b bVar = new b();
        bVar.c(bundle.getString("token"));
        bVar.a(boVar);
        bVar.b(j);
        taskCompletionSource.trySetResult(bVar.d());
    }
}
