package com.google.android.gms.internal.location;

import com.google.firebase.analytics.FirebaseAnalytics;

final class zzdt extends zzds {
    static final zzds zza = new zzdt(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzdt(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override
    public final Object get(int i) {
        zzdm.zza(i, this.zzc, FirebaseAnalytics.Param.INDEX);
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
    final boolean zzf() {
        return false;
    }

    @Override
    final Object[] zzg() {
        return this.zzb;
    }
}
