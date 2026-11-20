package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

public final class zzco extends zzct {
    private final AtomicReference zza = new AtomicReference();
    private boolean zzb;

    public static final java.lang.Object zzf(android.os.Bundle r2, java.lang.Class r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzco.zzf(android.os.Bundle, java.lang.Class):java.lang.Object");
    }

    @Override
    public final void zzb(Bundle bundle) {
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            try {
                try {
                    atomicReference.set(bundle);
                    this.zzb = true;
                    this.zza.notify();
                } catch (Throwable th) {
                    this.zza.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final String zzc(long j) {
        return (String) zzf(zze(j), String.class);
    }

    public final Long zzd(long j) {
        return (Long) zzf(zze(j), Long.class);
    }

    public final Bundle zze(long j) {
        Bundle bundle;
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            if (!this.zzb) {
                try {
                    atomicReference.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.zza.get();
        }
        return bundle;
    }
}
