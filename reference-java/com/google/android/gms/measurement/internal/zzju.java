package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzju extends zzay {
    final zzlj zza;

    zzju(zzlj zzljVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zzljVar);
        this.zza = zzljVar;
    }

    @Override
    public final void zza() {
        final zzlj zzljVarZzj = this.zza.zzu.zzj();
        Objects.requireNonNull(zzljVarZzj);
        new Thread(new Runnable() {
            @Override
            public final void run() {
                zzljVarZzj.zzw();
            }
        }).start();
    }
}
