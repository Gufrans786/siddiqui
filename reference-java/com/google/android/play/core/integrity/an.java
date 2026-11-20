package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

final class an extends com.google.android.play.integrity.internal.t {
    final byte[] a;
    final Long b;
    final TaskCompletionSource c;
    final IntegrityTokenRequest d;
    final ar e;

    an(ar arVar, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.a = bArr;
        this.b = l;
        this.c = taskCompletionSource2;
        this.d = integrityTokenRequest;
        Objects.requireNonNull(arVar);
        this.e = arVar;
    }

    @Override
    public final void a(Exception exc) {
        if (exc instanceof com.google.android.play.integrity.internal.af) {
            super.a(new IntegrityServiceException(-9, false, exc));
        } else {
            super.a(exc);
        }
    }

    @Override
    protected final void b() {
        try {
            ar arVar = this.e;
            ((com.google.android.play.integrity.internal.n) arVar.a.e()).d(ar.a(arVar, this.a, this.b), new aq(arVar, this.c));
        } catch (RemoteException e) {
            this.e.b.c(e, "requestIntegrityToken(%s)", this.d);
            this.c.trySetException(new IntegrityServiceException(-100, false, e));
        }
    }
}
