package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

public final class zzjm {
    private static UserManager zza;
    private static volatile boolean zzb = !zza();

    private zzjm() {
    }

    public static boolean zza() {
        return true;
    }

    public static boolean zzb(Context context) {
        return zza() && !zzd(context);
    }

    public static boolean zzc(Context context) {
        return !zza() || zzd(context);
    }

    private static boolean zzd(Context context) {
        if (zzb) {
            return true;
        }
        synchronized (zzjm.class) {
            if (zzb) {
                return true;
            }
            int i = 1;
            while (true) {
                boolean z = false;
                if (i <= 2) {
                    if (zza == null) {
                        zza = (UserManager) context.getSystemService(UserManager.class);
                    }
                    UserManager userManager = zza;
                    if (userManager == null) {
                        z = true;
                    } else {
                        try {
                            if (userManager.isUserUnlocked() || !userManager.isUserRunning(Process.myUserHandle())) {
                                z = true;
                            }
                        } catch (NullPointerException e) {
                            Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                            zza = null;
                            i++;
                        }
                    }
                    if (z) {
                        zzb = true;
                    }
                    return z;
                }
                if (z) {
                    zza = null;
                }
                if (z) {
                    zzb = true;
                }
                return z;
            }
        }
    }
}
