package com.google.android.gms.internal.fido;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import javax.annotation.CheckForNull;

final class zzas extends zzat {
    final transient int zza;
    final transient int zzb;
    final zzat zzc;

    zzas(zzat zzatVar, int i, int i2) {
        this.zzc = zzatVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override
    public final Object get(int i) {
        zzam.zza(i, this.zzb, FirebaseAnalytics.Param.INDEX);
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
    @CheckForNull
    final Object[] zze() {
        return this.zzc.zze();
    }

    @Override
    public final zzat subList(int i, int i2) {
        zzam.zze(i, i2, this.zzb);
        zzat zzatVar = this.zzc;
        int i3 = this.zza;
        return zzatVar.subList(i + i3, i2 + i3);
    }
}
