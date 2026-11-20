package com.google.android.gms.internal.fido;

import com.google.firebase.analytics.FirebaseAnalytics;

final class zzaw extends zzat {
    static final zzat zza = new zzaw(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzaw(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override
    public final Object get(int i) {
        zzam.zza(i, this.zzc, FirebaseAnalytics.Param.INDEX);
        Object obj = this.zzb[i];
        obj.getClass();
        return obj;
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    @Override
    final int zzb() {
        return this.zzc;
    }

    @Override
    final int zzc() {
        return 0;
    }

    @Override
    final Object[] zze() {
        return this.zzb;
    }
}
