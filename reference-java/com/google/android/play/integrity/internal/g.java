package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class g extends a implements i {
    g(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    @Override
    public final void c(Bundle bundle, r rVar) throws RemoteException {
        Parcel parcelA = a();
        c.c(parcelA, bundle);
        parcelA.writeStrongBinder(rVar);
        b(6, parcelA);
    }

    @Override
    public final void d(Bundle bundle, k kVar) throws RemoteException {
        Parcel parcelA = a();
        c.c(parcelA, bundle);
        parcelA.writeStrongBinder(kVar);
        b(3, parcelA);
    }

    @Override
    public final void e(Bundle bundle, k kVar) throws RemoteException {
        Parcel parcelA = a();
        c.c(parcelA, bundle);
        parcelA.writeStrongBinder(kVar);
        b(2, parcelA);
    }
}
