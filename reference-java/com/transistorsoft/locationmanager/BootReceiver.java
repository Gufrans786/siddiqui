package com.transistorsoft.locationmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.event.BootEvent;
import com.transistorsoft.locationmanager.lifecycle.LifecycleManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import org.greenrobot.eventbus.EventBus;

public class BootReceiver extends BroadcastReceiver {
    private void a(Context context, Intent intent) {
        TSConfig tSConfig = TSConfig.getInstance(context.getApplicationContext());
        BackgroundGeolocation backgroundGeolocation = BackgroundGeolocation.getInstance(context);
        EventBus.getDefault().post(new BootEvent(context, intent));
        if (LifecycleManager.getInstance().isHeadless()) {
            if (tSConfig.getEnabled().booleanValue() && (tSConfig.getStopOnTerminate().booleanValue() || !tSConfig.getStartOnBoot().booleanValue())) {
                tSConfig.setEnabled(Boolean.FALSE);
            }
            if (tSConfig.getStopOnTerminate().booleanValue()) {
                TSLog.logger.warn(TSLog.warn("Plugin is configured to stopOnTerminate: true.  Refusing to start BackgroundGeolocation on boot"));
                return;
            }
            if (tSConfig.getStartOnBoot().booleanValue()) {
                if (tSConfig.getSchedulerEnabled().booleanValue()) {
                    backgroundGeolocation.startSchedule();
                }
                if (tSConfig.getEnabled().booleanValue()) {
                    backgroundGeolocation.startOnBoot();
                }
            }
        }
    }

    public void b(Context context, Intent intent) {
        TSConfig tSConfig = TSConfig.getInstance(context.getApplicationContext());
        String action = intent.getAction();
        TSLog.logger.info(TSLog.header("BootReceiver: " + context.getPackageName()) + TSLog.boxRow(action));
        if (action == null) {
            TSLog.warn(TSLog.warn("BootReceiver executed with no Intent action!"));
            return;
        }
        if (action.equalsIgnoreCase("android.intent.action.BOOT_COMPLETED") || action.equalsIgnoreCase("android.intent.action.LOCKED_BOOT_COMPLETED")) {
            tSConfig.setDidDeviceReboot(true);
            a(context, intent);
        } else if (action.equalsIgnoreCase("android.intent.action.MY_PACKAGE_REPLACED")) {
            a(context, intent);
        }
    }

    @Override
    public void onReceive(final Context context, final Intent intent) {
        BackgroundGeolocation.getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.b(context, intent);
            }
        });
    }
}
