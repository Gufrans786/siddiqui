package com.google.android.gms.internal.measurement;

import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

final class zzs extends zzai {
    final boolean zza;
    final boolean zzb;
    final zzt zzc;

    public zzs(zzt zztVar, boolean z, boolean z2) {
        super(TSLog.ACTION_LOG);
        Objects.requireNonNull(zztVar);
        this.zzc = zztVar;
        this.zza = z;
        this.zzb = z2;
    }

    @Override
    public final zzao zza(zzg zzgVar, List list) {
        int i;
        int i2;
        String strZzc;
        ArrayList arrayList;
        zzh.zzb(TSLog.ACTION_LOG, 1, list);
        if (list.size() == 1) {
            zzt zztVar = this.zzc;
            zztVar.zzb().zza(3, zzgVar.zza((zzao) list.get(0)).zzc(), Collections.emptyList(), this.zza, this.zzb);
            return zzf;
        }
        int iZzg = zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue());
        if (iZzg != 2) {
            i = 3;
            if (iZzg == 3) {
                i2 = 1;
            } else if (iZzg == 5) {
                i2 = 5;
            } else if (iZzg == 6) {
                i2 = 2;
            }
            strZzc = zzgVar.zza((zzao) list.get(1)).zzc();
            if (list.size() == 2) {
                zzt zztVar2 = this.zzc;
                zztVar2.zzb().zza(i2, strZzc, Collections.emptyList(), this.zza, this.zzb);
                return zzf;
            }
            arrayList = new ArrayList();
            for (int i3 = 2; i3 < Math.min(list.size(), 5); i3++) {
                arrayList.add(zzgVar.zza((zzao) list.get(i3)).zzc());
            }
            this.zzc.zzb().zza(i2, strZzc, arrayList, this.zza, this.zzb);
            return zzf;
        }
        i = 4;
        i2 = i;
        strZzc = zzgVar.zza((zzao) list.get(1)).zzc();
        if (list.size() == 2) {
            zzt zztVar3 = this.zzc;
            zztVar3.zzb().zza(i2, strZzc, Collections.emptyList(), this.zza, this.zzb);
            return zzf;
        }
        arrayList = new ArrayList();
        while (i3 < Math.min(list.size(), 5)) {
            arrayList.add(zzgVar.zza((zzao) list.get(i3)).zzc());
        }
        this.zzc.zzb().zza(i2, strZzc, arrayList, this.zza, this.zzb);
        return zzf;
    }
}
