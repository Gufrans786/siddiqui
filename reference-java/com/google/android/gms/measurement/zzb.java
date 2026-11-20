package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlk;
import java.util.List;
import java.util.Map;

final class zzb extends zzc {
    private final zzlk zza;

    public zzb(zzlk zzlkVar) {
        super(null);
        Preconditions.checkNotNull(zzlkVar);
        this.zza = zzlkVar;
    }

    @Override
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zza(str, str2, bundle);
    }

    @Override
    public final void zzb(String str, String str2, Bundle bundle, long j) {
        this.zza.zzb(str, str2, bundle, j);
    }

    @Override
    public final Map zzc(boolean z) {
        return this.zza.zzd(null, null, z);
    }

    @Override
    public final Map zzd(String str, String str2, boolean z) {
        return this.zza.zzd(str, str2, z);
    }

    @Override
    public final void zze(zzjp zzjpVar) {
        this.zza.zze(zzjpVar);
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
        return this.zza.zzh();
    }

    @Override
    public final String zzi() {
        return this.zza.zzi();
    }

    @Override
    public final String zzj() {
        return this.zza.zzj();
    }

    @Override
    public final String zzk() {
        return this.zza.zzk();
    }

    @Override
    public final long zzl() {
        return this.zza.zzl();
    }

    @Override
    public final void zzm(String str) {
        this.zza.zzm(str);
    }

    @Override
    public final void zzn(String str) {
        this.zza.zzn(str);
    }

    @Override
    public final void zzo(Bundle bundle) {
        this.zza.zzo(bundle);
    }

    @Override
    public final void zzp(String str, String str2, Bundle bundle) {
        this.zza.zzp(str, str2, bundle);
    }

    @Override
    public final List zzq(String str, String str2) {
        return this.zza.zzq(str, str2);
    }

    @Override
    public final int zzr(String str) {
        return this.zza.zzr(str);
    }

    @Override
    public final Boolean zzs() {
        return (Boolean) this.zza.zzx(4);
    }

    @Override
    public final Integer zzt() {
        return (Integer) this.zza.zzx(3);
    }

    @Override
    public final String zzu() {
        return (String) this.zza.zzx(0);
    }

    @Override
    public final Long zzv() {
        return (Long) this.zza.zzx(1);
    }

    @Override
    public final Double zzw() {
        return (Double) this.zza.zzx(2);
    }

    @Override
    public final Object zzx(int i) {
        return this.zza.zzx(i);
    }
}
