package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzpl;
import java.util.List;
import java.util.Map;

final class zza extends zzc {
    private final zzic zza;
    private final zzlj zzb;

    public zza(zzic zzicVar) {
        super(null);
        Preconditions.checkNotNull(zzicVar);
        this.zza = zzicVar;
        this.zzb = zzicVar.zzj();
    }

    @Override
    public final void zza(String str, String str2, Bundle bundle) {
        this.zzb.zzB(str, str2, bundle);
    }

    @Override
    public final void zzb(String str, String str2, Bundle bundle, long j) {
        this.zzb.zzC(str, str2, bundle, true, false, j);
    }

    @Override
    public final Map zzc(boolean z) {
        List<zzpl> listZzO = this.zzb.zzO(z);
        ArrayMap arrayMap = new ArrayMap(listZzO.size());
        for (zzpl zzplVar : listZzO) {
            Object objZza = zzplVar.zza();
            if (objZza != null) {
                arrayMap.put(zzplVar.zzb, objZza);
            }
        }
        return arrayMap;
    }

    @Override
    public final Map zzd(String str, String str2, boolean z) {
        return this.zzb.zzP(str, str2, z);
    }

    @Override
    public final void zze(zzjp zzjpVar) {
        this.zzb.zzV(zzjpVar);
    }

    @Override
    public final void zzf(zzjq zzjqVar) {
        this.zzb.zzW(zzjqVar);
    }

    @Override
    public final void zzg(zzjq zzjqVar) {
        this.zzb.zzX(zzjqVar);
    }

    @Override
    public final String zzh() {
        return this.zzb.zzad();
    }

    @Override
    public final String zzi() {
        return this.zzb.zzae();
    }

    @Override
    public final String zzj() {
        return this.zzb.zzQ();
    }

    @Override
    public final String zzk() {
        return this.zzb.zzaf();
    }

    @Override
    public final long zzl() {
        return this.zza.zzk().zzd();
    }

    @Override
    public final void zzm(String str) {
        zzic zzicVar = this.zza;
        zzicVar.zzw().zza(str, zzicVar.zzaZ().elapsedRealtime());
    }

    @Override
    public final void zzn(String str) {
        zzic zzicVar = this.zza;
        zzicVar.zzw().zzb(str, zzicVar.zzaZ().elapsedRealtime());
    }

    @Override
    public final void zzo(Bundle bundle) {
        this.zzb.zzZ(bundle);
    }

    @Override
    public final void zzp(String str, String str2, Bundle bundle) {
        this.zza.zzj().zzab(str, str2, bundle);
    }

    @Override
    public final List zzq(String str, String str2) {
        return this.zzb.zzac(str, str2);
    }

    @Override
    public final int zzr(String str) {
        this.zzb.zzY(str);
        return 25;
    }

    @Override
    public final Boolean zzs() {
        return this.zzb.zzi();
    }

    @Override
    public final Integer zzt() {
        return this.zzb.zzl();
    }

    @Override
    public final String zzu() {
        return this.zzb.zzj();
    }

    @Override
    public final Long zzv() {
        return this.zzb.zzk();
    }

    @Override
    public final Double zzw() {
        return this.zzb.zzm();
    }

    @Override
    public final Object zzx(int i) {
        if (i == 0) {
            return this.zzb.zzj();
        }
        if (i == 1) {
            return this.zzb.zzk();
        }
        if (i != 2) {
            return i != 3 ? this.zzb.zzi() : this.zzb.zzl();
        }
        return this.zzb.zzm();
    }
}
