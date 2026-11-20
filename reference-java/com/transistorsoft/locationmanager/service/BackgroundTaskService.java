package com.transistorsoft.locationmanager.service;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.util.BackgroundTaskManager;

public class BackgroundTaskService extends AbstractService {
    private static Intent a(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) BackgroundTaskService.class);
        if (str != null) {
            intent.setAction(str);
        }
        return intent;
    }

    public void c(int i) {
        a(i);
    }

    public static void start(Context context, int i) {
        Intent intentA = a(context, (String) null);
        intentA.putExtra(BackgroundTaskManager.TASK_ID_FIELD, i);
        AbstractService.startForegroundService(context, intentA);
    }

    public static void stop(Context context) {
        AbstractService.stop(context, BackgroundTaskService.class);
    }

    @Override
    public void onCreate() {
        if (Build.VERSION.SDK_INT >= 29) {
            super.a(getClass().getSimpleName(), 2048);
        } else {
            super.a(getClass().getSimpleName(), 0);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int i, final int i2) {
        if (!a(intent, i2, false)) {
            return 2;
        }
        if (intent.hasExtra(BackgroundTaskManager.TASK_ID_FIELD)) {
            BackgroundTaskManager.getInstance().onStartJob(getApplicationContext(), intent.getIntExtra(BackgroundTaskManager.TASK_ID_FIELD, 0), new BackgroundTaskManager.Callback() {
                @Override
                public final void onFinish() {
                    this.f$0.c(i2);
                }
            });
            return 3;
        }
        TSLog.logger.warn(TSLog.warn("BackgroundTaskService called with no taskId"));
        a(i2);
        return 3;
    }
}
