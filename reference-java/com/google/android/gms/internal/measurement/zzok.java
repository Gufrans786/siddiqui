package com.google.android.gms.internal.measurement;

final class zzok extends zzoi {
    zzok() {
    }

    @Override
    final Object zza(Object obj) {
        zzmf zzmfVar = (zzmf) obj;
        zzoj zzojVar = zzmfVar.zzc;
        if (zzojVar != zzoj.zza()) {
            return zzojVar;
        }
        zzoj zzojVarZzb = zzoj.zzb();
        zzmfVar.zzc = zzojVarZzb;
        return zzojVarZzb;
    }

    @Override
    final void zzb(Object obj) {
        ((zzmf) obj).zzc.zzd();
    }
}
