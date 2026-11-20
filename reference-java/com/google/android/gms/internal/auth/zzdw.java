package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;

final class zzdw extends zzdy {
    final zzef zza;
    private int zzb = 0;
    private final int zzc;

    zzdw(zzef zzefVar) {
        this.zza = zzefVar;
        this.zzc = zzefVar.zzd();
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
