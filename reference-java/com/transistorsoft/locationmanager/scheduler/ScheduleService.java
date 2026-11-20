package com.transistorsoft.locationmanager.scheduler;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.transistorsoft.locationmanager.service.AbstractService;
import com.transistorsoft.locationmanager.util.Util;

public class ScheduleService extends AbstractService {
    static PendingIntent b(Context context, Intent intent) {
        return Build.VERSION.SDK_INT >= 26 ? PendingIntent.getForegroundService(context, 0, intent, Util.getPendingIntentFlags(134217728)) : PendingIntent.getService(context, 0, intent, 134217728);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!a(intent, i2, false)) {
            return 2;
        }
        if (intent.hasExtra("schedule_enabled")) {
            ScheduleEvent.a(getApplicationContext(), intent.getBooleanExtra("schedule_enabled", false), intent.getIntExtra("trackingMode", 1));
        }
        a(i2);
        return 3;
    }
}
