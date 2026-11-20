package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

final class zzar implements Iterator {
    final zzas zza;
    private int zzb;

    zzar(zzas zzasVar) {
        Objects.requireNonNull(zzasVar);
        this.zza = zzasVar;
        this.zzb = 0;
    }

    @Override
    public final boolean hasNext() {
        return this.zzb < this.zza.zzb().length();
    }

    @Override
    public final Object next() {
        zzas zzasVar = this.zza;
        String strZzb = zzasVar.zzb();
        int i = this.zzb;
        if (i >= strZzb.length()) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return new zzas(String.valueOf(zzasVar.zzb().charAt(i)));
    }
}
