package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

final class zzin implements Runnable {
    final zzr zza;
    final zzjd zzb;

    zzin(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override
    public final void run() throws Throwable {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        zzpg zzpgVarZzL = zzjdVar.zzL();
        zzpgVarZzL.zzaW().zzg();
        zzpgVarZzL.zzu();
        zzr zzrVar = this.zza;
        Preconditions.checkNotEmpty(zzrVar.zza);
        zzpgVarZzL.zzao(zzrVar);
    }
}
