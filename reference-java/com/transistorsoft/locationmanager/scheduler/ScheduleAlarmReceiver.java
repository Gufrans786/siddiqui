package com.transistorsoft.locationmanager.scheduler;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.util.Util;

public class ScheduleAlarmReceiver extends BroadcastReceiver {
    public static String TAG = "TSLocationManager";

    class a implements Runnable {
        final Intent a;
        final Context b;

        a(Intent intent, Context context) {
            this.a = intent;
            this.b = context;
        }

        @Override
        public void run() {
            ScheduleEvent.a(this.b.getApplicationContext(), this.a.getBooleanExtra("schedule_enabled", false), this.a.getIntExtra("trackingMode", 1));
        }
    }

    public static void a() {
    }

    @Override
    public void onReceive(final Context context, Intent intent) {
        if (!intent.hasExtra(TSScheduleManager.ACTION_ONESHOT)) {
            BackgroundGeolocation.getThreadPool().execute(new a(intent, context));
            return;
        }
        final String stringExtra = intent.getStringExtra(TSScheduleManager.ACTION_NAME);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, stringExtra.hashCode(), intent, Util.getPendingIntentFlags(134217728));
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager != null && broadcast != null) {
            alarmManager.cancel(broadcast);
            broadcast.cancel();
        }
        BackgroundGeolocation.getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                ScheduleAlarmReceiver.a(context, stringExtra);
            }
        });
    }

    public static void a(Context context, String str) {
        ScheduleEvent.a(context, str, new ScheduleEvent.Callback() {
            @Override
            public final void onFinish() {
                ScheduleAlarmReceiver.a();
            }
        });
    }
}
