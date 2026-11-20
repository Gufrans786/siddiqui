package com.google.android.gms.auth.api.accounttransfer;

import android.os.RemoteException;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.internal.auth.zzaz;

final class zzc extends zzn {
    final zzaz zza;

    zzc(AccountTransferClient accountTransferClient, int i, zzaz zzazVar) {
        super(1606);
        this.zza = zzazVar;
    }

    @Override
    protected final void zza(zzau zzauVar) throws RemoteException {
        zzauVar.zzh(this.zzc, this.zza);
    }
}
