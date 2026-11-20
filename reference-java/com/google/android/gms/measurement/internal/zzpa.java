package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzpa implements Runnable {
    final String zza;
    final String zzb;
    final Bundle zzc;
    final zzpb zzd;

    zzpa(zzpb zzpbVar, String str, String str2, Bundle bundle) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
        Objects.requireNonNull(zzpbVar);
        this.zzd = zzpbVar;
    }

    @Override
    public final void run() throws Throwable {
        zzpg zzpgVar = this.zzd.zza;
        zzpp zzppVarZzt = zzpgVar.zzt();
        long jCurrentTimeMillis = zzpgVar.zzaZ().currentTimeMillis();
        String str = this.zza;
        zzpgVar.zzD((zzbg) Preconditions.checkNotNull(zzppVarZzt.zzac(str, this.zzb, this.zzc, "auto", jCurrentTimeMillis, false, true)), str);
    }
}
