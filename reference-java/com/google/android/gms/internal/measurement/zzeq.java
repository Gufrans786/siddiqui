package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

abstract class zzeq implements Runnable {
    final long zzh;
    final long zzi;
    final boolean zzj;
    final zzfb zzk;

    zzeq(zzfb zzfbVar, boolean z) {
        Objects.requireNonNull(zzfbVar);
        this.zzk = zzfbVar;
        this.zzh = zzfbVar.zza.currentTimeMillis();
        this.zzi = zzfbVar.zza.elapsedRealtime();
        this.zzj = z;
    }

    @Override
    public final void run() {
        if (this.zzk.zzP()) {
            zzb();
            return;
        }
        try {
            zza();
        } catch (Exception e) {
            this.zzk.zzN(e, false, this.zzj);
            zzb();
        }
    }

    abstract void zza() throws RemoteException;

    protected void zzb() {
    }
}
