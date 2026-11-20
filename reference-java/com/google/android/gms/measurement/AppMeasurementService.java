package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.zznp;
import com.google.android.gms.measurement.internal.zznt;

public final class AppMeasurementService extends Service implements zznp {
    private zznt zza;

    private final zznt zzd() {
        if (this.zza == null) {
            this.zza = new zznt(this);
        }
        return this.zza;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return zzd().zzd(intent);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        zzd().zza();
    }

    @Override
    public void onDestroy() {
        zzd().zzb();
        super.onDestroy();
    }

    @Override
    public void onRebind(Intent intent) {
        zzd();
        zznt.zzi(intent);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        zzd().zzc(intent, i, i2);
        return 2;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        zzd();
        zznt.zzj(intent);
        return true;
    }

    @Override
    public final boolean zza(int i) {
        return stopSelfResult(i);
    }

    @Override
    public final void zzb(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void zzc(Intent intent) {
        AppMeasurementReceiver.completeWakefulIntent(intent);
    }
}
