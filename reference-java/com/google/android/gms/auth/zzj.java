package com.google.android.gms.auth;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.auth.zzby;
import java.io.IOException;

final class zzj implements zzk {
    final String zza;
    final Context zzb;

    zzj(String str, Context context) {
        this.zza = str;
        this.zzb = context;
    }

    @Override
    public final Object zza(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle bundleZzg = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzg(this.zza);
        zzl.zzc(bundleZzg);
        String string = bundleZzg.getString("Error");
        Intent intent = (Intent) bundleZzg.getParcelable("userRecoveryIntent");
        PendingIntent pendingIntent = (PendingIntent) bundleZzg.getParcelable("userRecoveryPendingIntent");
        if (zzby.SUCCESS.equals(zzby.zza(string))) {
            return true;
        }
        zzl.zzn(this.zzb, "requestGoogleAccountsAccess", string, intent, pendingIntent);
        throw new GoogleAuthException("Invalid state. Shouldn't happen");
    }
}
