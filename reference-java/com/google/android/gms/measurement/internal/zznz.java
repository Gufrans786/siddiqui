package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zznz extends zzay {
    final zzoa zza;

    zznz(zzoa zzoaVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zzoaVar);
        this.zza = zzoaVar;
    }

    @Override
    public final void zza() {
        zzoa zzoaVar = this.zza;
        zzoc zzocVar = zzoaVar.zzc;
        zzocVar.zzg();
        zzic zzicVar = zzocVar.zzu;
        zzoaVar.zzd(false, false, zzicVar.zzaZ().elapsedRealtime());
        zzocVar.zzu.zzw().zzc(zzicVar.zzaZ().elapsedRealtime());
    }
}
