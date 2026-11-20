package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlk;
import java.util.List;
import java.util.Map;

final class zzd implements zzlk {
    final zzfb zza;

    zzd(zzfb zzfbVar) {
        this.zza = zzfbVar;
    }

    @Override
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zzi(str, str2, bundle);
    }

    @Override
    public final void zzb(String str, String str2, Bundle bundle, long j) {
        this.zza.zzj(str, str2, bundle, j);
    }

    @Override
    public final Map zzd(String str, String str2, boolean z) {
        return this.zza.zzC(str, str2, z);
    }

    @Override
    public final void zze(zzjp zzjpVar) {
        this.zza.zzd(zzjpVar);
    }

    @Override
    public final void zzf(zzjq zzjqVar) {
        this.zza.zzf(zzjqVar);
    }

    @Override
    public final void zzg(zzjq zzjqVar) {
        this.zza.zzg(zzjqVar);
    }

    @Override
    public final String zzh() {
        return this.zza.zzA();
    }

    @Override
    public final String zzi() {
        return this.zza.zzB();
    }

    @Override
    public final String zzj() {
        return this.zza.zzy();
    }

    @Override
    public final String zzk() {
        return this.zza.zzx();
    }

    @Override
    public final long zzl() {
        return this.zza.zzz();
    }

    @Override
    public final void zzm(String str) {
        this.zza.zzu(str);
    }

    @Override
    public final void zzn(String str) {
        this.zza.zzv(str);
    }

    @Override
    public final void zzo(Bundle bundle) {
        this.zza.zzl(bundle);
    }

    @Override
    public final void zzp(String str, String str2, Bundle bundle) {
        this.zza.zzm(str, str2, bundle);
    }

    @Override
    public final List zzq(String str, String str2) {
        return this.zza.zzn(str, str2);
    }

    @Override
    public final int zzr(String str) {
        return this.zza.zzF(str);
    }

    @Override
    public final Object zzx(int i) {
        return this.zza.zzJ(i);
    }
}
