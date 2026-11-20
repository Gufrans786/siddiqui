package com.google.android.gms.internal.auth;

final class zzhb extends zzgz {
    zzhb() {
    }

    @Override
    final Object zza(Object obj) {
        zzev zzevVar = (zzev) obj;
        zzha zzhaVar = zzevVar.zzc;
        if (zzhaVar != zzha.zza()) {
            return zzhaVar;
        }
        zzha zzhaVarZzd = zzha.zzd();
        zzevVar.zzc = zzhaVarZzd;
        return zzhaVarZzd;
    }

    @Override
    final Object zzb(Object obj) {
        return ((zzev) obj).zzc;
    }

    @Override
    final Object zzc(Object obj, Object obj2) {
        if (!zzha.zza().equals(obj2)) {
            if (zzha.zza().equals(obj)) {
                return zzha.zzc((zzha) obj, (zzha) obj2);
            }
            ((zzha) obj).zzb((zzha) obj2);
        }
        return obj;
    }

    @Override
    final void zzd(Object obj, int i, long j) {
        ((zzha) obj).zzh(i << 3, Long.valueOf(j));
    }

    @Override
    final void zze(Object obj) {
        ((zzev) obj).zzc.zzf();
    }

    @Override
    final void zzf(Object obj, Object obj2) {
        ((zzev) obj).zzc = (zzha) obj2;
    }
}
