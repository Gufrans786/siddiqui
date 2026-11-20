package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzmm extends zzay {
    final zznl zza;

    zzmm(zznl zznlVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zznlVar);
        this.zza = zznlVar;
    }

    @Override
    public final void zza() {
        zznl zznlVar = this.zza;
        zznlVar.zzg();
        if (zznlVar.zzh()) {
            zznlVar.zzu.zzaV().zzk().zza("Inactivity, disconnecting from the service");
            zznlVar.zzM();
        }
    }
}
