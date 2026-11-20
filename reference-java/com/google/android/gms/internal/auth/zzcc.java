package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

public final class zzcc {
    private static UserManager zza;
    private static volatile boolean zzb = !zzb();

    private zzcc() {
    }

    public static boolean zzb() {
        return true;
    }

    public static boolean zza(Context context) {
        boolean z;
        if (zzb() && !zzb) {
            synchronized (zzcc.class) {
                if (!zzb) {
                    int i = 1;
                    while (true) {
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
                                    if (z) {
                                        zza = null;
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
                            if (!z) {
                                return true;
                            }
                        }
                        z = false;
                        if (z) {
                            zza = null;
                        }
                        if (z) {
                            zzb = true;
                        }
                        if (!z) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
