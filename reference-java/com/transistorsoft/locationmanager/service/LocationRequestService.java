package com.transistorsoft.locationmanager.service;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.geofence.TSGeofenceManager;
import com.transistorsoft.locationmanager.location.SingleLocationRequest;
import com.transistorsoft.locationmanager.location.SingleLocationResult;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.location.WatchPositionResult;
import com.transistorsoft.locationmanager.logger.TSLog;

public class LocationRequestService extends AbstractService {

    class a implements Runnable {
        private final Intent a;
        private final int b;

        a(Intent intent, int i) {
            this.a = intent;
            this.b = i;
        }

        @Override
        public void run() {
            String action = this.a.getAction();
            if (LocationResult.hasResult(this.a)) {
                LocationRequestService.this.a(true);
                LocationRequestService.this.c(this.a);
            } else if (LocationAvailability.hasLocationAvailability(this.a)) {
                LocationRequestService.this.b(this.a);
            } else if (action != null && action.equalsIgnoreCase("start")) {
                LocationRequestService.this.d(this.a);
            }
            LocationRequestService.this.a(this.b);
        }
    }

    public void d(Intent intent) {
        int intExtra = intent.getIntExtra("id", 0);
        SingleLocationRequest request = TSLocationManager.getInstance(getApplicationContext()).getRequest(intExtra);
        if (request != null) {
            request.startUpdatingLocation();
        } else {
            TSLog.logger.warn(TSLog.warn("Failed to find SingleLocationRequest in START action; requestId: " + intExtra + ".  This is likely from a timed-out location request; " + intent));
            a(false);
        }
    }

    public static void stopService(Context context) {
        AbstractService.stop(context, LocationRequestService.class);
    }

    @Override
    public void onCreate() {
        if (Build.VERSION.SDK_INT >= 29) {
            super.a(getClass().getSimpleName(), 8);
        } else {
            super.a(getClass().getSimpleName(), 0);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!a(intent, i2, false)) {
            return 3;
        }
        BackgroundGeolocation.getThreadPool().execute(new a(intent, i2));
        return 3;
    }

    @Override
    public void onTimeout(int i, int i2) {
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(getApplicationContext());
        for (Intent intent : this.h) {
            if ("start".equalsIgnoreCase(intent.getAction()) && getClass().getName().equals(intent.getComponent().getClassName()) && intent.hasExtra("id")) {
                tSLocationManager.cancelRequest(intent.getIntExtra("id", 0));
            }
        }
        super.onTimeout(i, i2);
    }

    public void b(Intent intent) {
        TSLog.logger.info(TSLog.info("Location availability: " + LocationAvailability.extractLocationAvailability(intent).isLocationAvailable()));
    }

    public void c(Intent intent) {
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (intent.getAction() == null) {
            TSLog.logger.error(TSLog.error("handleLocationResult with no action"));
            a(false);
            return;
        }
        String[] strArrSplit = intent.getAction().split(":");
        int iIntValue = Integer.valueOf(strArrSplit[0]).intValue();
        int iIntValue2 = Integer.valueOf(strArrSplit[1]).intValue();
        Location lastLocation = LocationResult.extractResult(intent).getLastLocation();
        Bundle extras = lastLocation.getExtras();
        if (extras == null) {
            extras = new Bundle();
            lastLocation.setExtras(extras);
        }
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(getApplicationContext());
        if (iIntValue == 5) {
            tSLocationManager.onWatchPositionResult(new WatchPositionResult(iIntValue2, lastLocation));
            return;
        }
        SingleLocationRequest request = tSLocationManager.getRequest(iIntValue2);
        if (request == null) {
            TSLog.logger.warn(TSLog.info("Failed to find SingleLocationRequest: " + iIntValue2) + ".  Ignored");
            SingleLocationRequest.forceStop(getApplicationContext(), iIntValue, iIntValue2);
            a(false);
        } else {
            if (iIntValue == 1 && !tSConfig.getEnabled().booleanValue()) {
                TSLog.logger.warn(TSLog.warn("Attempt to get motionchange position while disabled"));
                request.finish();
                return;
            }
            extras.putInt("requestId", iIntValue2);
            tSLocationManager.onSingleLocationResult(new SingleLocationResult(iIntValue2, lastLocation));
            if (request.isFinished()) {
                if (iIntValue == 2 || iIntValue == 1) {
                    TSGeofenceManager.getInstance(getApplicationContext()).setLocation(lastLocation, tSConfig.getIsMoving().booleanValue());
                }
                a(false);
            }
        }
    }
}
