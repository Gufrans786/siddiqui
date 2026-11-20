package com.transistorsoft.tsbackgroundfetch;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;

public class FetchAlarmReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        final PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "TSBackgroundFetch::" + intent.getAction());
        wakeLockNewWakeLock.acquire(BGTask.MAX_TIME + 4000);
        BackgroundFetch.getInstance(context.getApplicationContext()).onFetch(new BGTask(context, intent.getAction(), new FetchJobService.CompletionHandler() {
            @Override
            public void finish() {
                if (wakeLockNewWakeLock.isHeld()) {
                    wakeLockNewWakeLock.release();
                    Log.d(BackgroundFetch.TAG, "- FetchAlarmReceiver finish");
                }
            }
        }, 0));
    }
}
