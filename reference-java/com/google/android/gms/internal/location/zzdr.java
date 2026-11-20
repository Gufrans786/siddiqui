package com.google.android.gms.internal.location;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import javax.annotation.CheckForNull;

final class zzdr extends zzds {
    final transient int zza;
    final transient int zzb;
    final zzds zzc;

    zzdr(zzds zzdsVar, int i, int i2) {
        this.zzc = zzdsVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override
    public final Object get(int i) {
        zzdm.zza(i, this.zzb, FirebaseAnalytics.Param.INDEX);
        return this.zzc.get(i + this.zza);
    }

    @Override
    public final int size() {
        return this.zzb;
    }

    @Override
    public final List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override
    final boolean zzf() {
        return true;
    }

    @Override
    @CheckForNull
    final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override
    public final zzds subList(int i, int i2) {
        zzdm.zzc(i, i2, this.zzb);
        zzds zzdsVar = this.zzc;
        int i3 = this.zza;
        return zzdsVar.subList(i + i3, i2 + i3);
    }
}
