package com.transistorsoft.tsbackgroundfetch;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class BootReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(final Context context, Intent intent) {
        Log.d(BackgroundFetch.TAG, "BootReceiver: " + intent.getAction());
        BackgroundFetch.getThreadPool().execute(new Runnable() {
            @Override
            public void run() {
                BackgroundFetch.getInstance(context.getApplicationContext()).onBoot();
            }
        });
    }
}
