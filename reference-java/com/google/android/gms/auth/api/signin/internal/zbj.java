package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

final class zbj extends zba {
    final zbk zba;

    zbj(zbk zbkVar) {
        Objects.requireNonNull(zbkVar);
        this.zba = zbkVar;
    }

    @Override
    public final void zbd(Status status) throws RemoteException {
        this.zba.setResult(status);
    }
}
