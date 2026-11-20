package com.google.android.gms.internal.measurement;

import androidx.core.app.NotificationCompat;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.List;

public final class zzt extends zzai {
    private final zzr zza;

    public zzt(zzr zzrVar) {
        super("internal.logger");
        this.zza = zzrVar;
        this.zze.put(TSLog.ACTION_LOG, new zzs(this, false, true));
        this.zze.put(NotificationCompat.GROUP_KEY_SILENT, new zzp(this, NotificationCompat.GROUP_KEY_SILENT));
        ((zzai) this.zze.get(NotificationCompat.GROUP_KEY_SILENT)).zzm(TSLog.ACTION_LOG, new zzs(this, true, true));
        this.zze.put("unmonitored", new zzq(this, "unmonitored"));
        ((zzai) this.zze.get("unmonitored")).zzm(TSLog.ACTION_LOG, new zzs(this, false, false));
    }

    @Override
    public final zzao zza(zzg zzgVar, List list) {
        return zzao.zzf;
    }

    final zzr zzb() {
        return this.zza;
    }
}
