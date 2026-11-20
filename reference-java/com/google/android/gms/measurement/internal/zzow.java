package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
import java.util.Objects;

final class zzow implements zzgw {
    final String zza;
    final List zzb;
    final zzpg zzc;

    zzow(zzpg zzpgVar, String str, List list) {
        this.zza = str;
        this.zzb = list;
        Objects.requireNonNull(zzpgVar);
        this.zzc = zzpgVar;
    }

    @Override
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map map) {
        this.zzc.zzV(true, i, th, bArr, this.zza, this.zzb);
    }
}
