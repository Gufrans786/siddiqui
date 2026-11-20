package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzhl;

public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzhl.zza {
    private zzhl zza;

    public BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    @Override
    public void doStartService(Context context, Intent intent) {
        startWakefulService(context, intent);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (this.zza == null) {
            this.zza = new zzhl(this);
        }
        this.zza.zza(context, intent);
    }
}
