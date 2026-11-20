package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zznp;
import com.google.android.gms.measurement.internal.zznt;

public final class AppMeasurementJobService extends JobService implements zznp {
    private zznt zza;

    private final zznt zzd() {
        if (this.zza == null) {
            this.zza = new zznt(this);
        }
        return this.zza;
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
    public boolean onStartJob(JobParameters jobParameters) {
        zzd().zze(jobParameters);
        return true;
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        zzd();
        zznt.zzj(intent);
        return true;
    }

    @Override
    public final boolean zza(int i) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void zzb(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override
    public final void zzc(Intent intent) {
    }
}
