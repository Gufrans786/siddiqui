package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
import java.util.Objects;

final class zzla extends zzlb {
    final zzlh zza;
    private int zzb;
    private final int zzc;

    zzla(zzlh zzlhVar) {
        Objects.requireNonNull(zzlhVar);
        this.zza = zzlhVar;
        this.zzb = 0;
        this.zzc = zzlhVar.zzc();
    }

    @Override
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override
    public final byte zza() {
        int i = this.zzb;
        if (i >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return this.zza.zzb(i);
    }
}
