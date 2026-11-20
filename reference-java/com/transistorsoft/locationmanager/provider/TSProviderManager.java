package com.transistorsoft.locationmanager.provider;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.transistorsoft.locationmanager.activity.TSLocationManagerActivity;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.event.LocationProviderChangeEvent;
import com.transistorsoft.locationmanager.lifecycle.LifecycleManager;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import org.greenrobot.eventbus.EventBus;

public class TSProviderManager {
    public static int ACCURACY_AUTHORIZATION_FULL = 0;
    public static int ACCURACY_AUTHORIZATION_REDUCED = 1;
    public static int PERMISSION_ALWAYS = 3;
    public static int PERMISSION_DENIED = 2;
    public static int PERMISSION_WHEN_IN_USE = 4;
    private static TSProviderManager c;
    private BroadcastReceiver a;
    private final LocationProviderChangeEvent b;

    static class b extends BroadcastReceiver {
        private b() {
        }

        @Override
        public void onReceive(final Context context, final Intent intent) {
            final TSProviderManager tSProviderManager = TSProviderManager.getInstance(context.getApplicationContext());
            BackgroundGeolocation.getUiHandler().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    TSProviderManager.a(tSProviderManager, context, intent);
                }
            }, 1000L);
        }
    }

    private TSProviderManager(Context context) {
        this.b = new LocationProviderChangeEvent(context);
    }

    public static void a(TSProviderManager tSProviderManager, Context context, Intent intent) {
        tSProviderManager.a(context, intent);
    }

    public static TSProviderManager getInstance(Context context) {
        if (c == null) {
            c = a(context);
        }
        return c;
    }

    public void onConnectivityChange(Context context, boolean z) {
        LocationProviderChangeEvent locationProviderChangeEvent = new LocationProviderChangeEvent(context);
        synchronized (this.b) {
            if (!this.b.equals(locationProviderChangeEvent)) {
                a(context, null);
            }
        }
    }

    public void startMonitoring(Context context) {
        synchronized (this.b) {
            this.b.init(context);
        }
        if (this.a == null) {
            TSLog.logger.info(TSLog.on("Start monitoring location-provider changes"));
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.location.PROVIDERS_CHANGED");
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            this.a = new b();
            context.getApplicationContext().registerReceiver(this.a, intentFilter);
            if (LifecycleManager.getInstance().isHeadless() && TSConfig.getInstance(context).getEnabled().booleanValue()) {
                EventBus.getDefault().post(new LocationProviderChangeEvent(context));
            }
        }
    }

    public void stopMonitoring(Context context) {
        if (this.a != null) {
            try {
                context.getApplicationContext().unregisterReceiver(this.a);
                this.a = null;
                TSLog.logger.info(TSLog.off("Stop monitoring location-provider changes"));
            } catch (IllegalArgumentException e) {
                TSLog.logger.error(TSLog.error(e.getMessage()));
            }
        }
    }

    private static synchronized TSProviderManager a(Context context) {
        if (c == null) {
            c = new TSProviderManager(context);
        }
        return c;
    }

    public void a(Context context, Intent intent) {
        synchronized (this.b) {
            if (this.b.elapsed() < 250) {
                return;
            }
            TSConfig tSConfig = TSConfig.getInstance(context);
            if (LifecycleManager.getInstance().isHeadless() && !tSConfig.getEnabled().booleanValue()) {
                TSLog.logger.info(TSLog.off("Stop monitoring location-provider changes"));
                stopMonitoring(context);
            }
            LocationProviderChangeEvent locationProviderChangeEvent = new LocationProviderChangeEvent(context);
            synchronized (this.b) {
                if (locationProviderChangeEvent.equals(this.b)) {
                    return;
                }
                this.b.update(locationProviderChangeEvent);
                TSLocationManager.getInstance(context).onProviderChange(locationProviderChangeEvent);
                TSLocationManagerActivity.startIfEnabled(context, TSLocationManagerActivity.ACTION_LOCATION_SETTINGS);
                TSLog.logger.info(new StringBuffer().append(TSLog.header("Location-provider change: " + locationProviderChangeEvent.isEnabled())).append(TSLog.boxRow("GPS: " + locationProviderChangeEvent.isGPSEnabled())).append(TSLog.boxRow("Network: " + locationProviderChangeEvent.isNetworkEnabled())).append(TSLog.boxRow("AP Mode: " + locationProviderChangeEvent.isAirplaneMode())).toString());
                EventBus.getDefault().post(locationProviderChangeEvent);
            }
        }
    }
}
