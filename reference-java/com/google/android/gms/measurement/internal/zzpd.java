package com.google.android.gms.measurement.internal;

import java.util.Objects;

final class zzpd {
    final String zza;
    long zzb;

    private zzpd(zzpg zzpgVar, String str) {
        Objects.requireNonNull(zzpgVar);
        this.zza = str;
        this.zzb = zzpgVar.zzaZ().elapsedRealtime();
    }

    zzpd(zzpg zzpgVar, String str, byte[] bArr) {
        this(zzpgVar, str);
    }

    zzpd(zzpg zzpgVar, byte[] bArr) {
        this(zzpgVar, zzpgVar.zzt().zzaw());
    }
}
