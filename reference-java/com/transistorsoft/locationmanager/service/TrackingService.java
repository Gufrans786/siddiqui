package com.transistorsoft.locationmanager.service;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.location.ActivityTransitionEvent;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.intentfilter.androidpermissions.PermissionManager;
import com.intentfilter.androidpermissions.models.DeniedPermissions;
import com.transistorsoft.locationmanager.activity.TSLocationManagerActivity;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.adapter.callback.TSLocationCallback;
import com.transistorsoft.locationmanager.config.TSNotification;
import com.transistorsoft.locationmanager.device.DeviceSettings;
import com.transistorsoft.locationmanager.event.ConfigChangeEvent;
import com.transistorsoft.locationmanager.event.MotionActivityCheckEvent;
import com.transistorsoft.locationmanager.event.MotionTriggerDelayEvent;
import com.transistorsoft.locationmanager.event.StopAfterElapsedMinutesEvent;
import com.transistorsoft.locationmanager.event.StopTimeoutEvent;
import com.transistorsoft.locationmanager.geofence.TSGeofenceManager;
import com.transistorsoft.locationmanager.http.HttpService;
import com.transistorsoft.locationmanager.lifecycle.LifecycleManager;
import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.location.TSMotionChangeRequest;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.logger.TSMediaPlayer;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import com.transistorsoft.locationmanager.util.LocationAuthorization;
import com.transistorsoft.locationmanager.util.Util;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

public class TrackingService extends AbstractService {
    private static final int A = 1200000;
    private Date t;
    private LocationAvailability v;
    private LocationResult w;
    private Runnable x;
    private Runnable y;
    private static final AtomicInteger z = new AtomicInteger(0);
    private static final Handler B = new Handler(Looper.getMainLooper());
    private boolean q = false;
    private Location r = null;
    private Location s = null;
    private boolean u = false;

    class a implements TSLocationManager.LocationCallback {
        final Context a;

        a(Context context) {
            this.a = context;
        }

        @Override
        public void onFailure(String str) {
            TSLog.warn(TSLog.warn("Failed fetch last known location to start-monitoring stationary-geofence after app restart"));
        }

        @Override
        public void onLocation(Location location) {
            TSGeofenceManager.getInstance(this.a).startMonitoringStationaryRegion(location);
        }
    }

    class b implements PermissionManager.PermissionRequestListener {
        final Context a;
        final boolean b;
        final TSLocationCallback c;

        b(Context context, boolean z, TSLocationCallback tSLocationCallback) {
            this.a = context;
            this.b = z;
            this.c = tSLocationCallback;
        }

        @Override
        public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            TSLocationCallback tSLocationCallback = this.c;
            if (tSLocationCallback != null) {
                tSLocationCallback.onError(3);
            }
        }

        @Override
        public void onPermissionGranted() {
            if (LocationAuthorization.hasBackgroundPermission(this.a)) {
                TrackingService.changePace(this.a, this.b, this.c);
                return;
            }
            TSLocationCallback tSLocationCallback = this.c;
            if (tSLocationCallback != null) {
                tSLocationCallback.onError(3);
            }
        }
    }

    class c implements TSLocationManager.LocationCallback {
        c() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onLocation(Location location) {
            TrackingService.this.a(location);
        }
    }

    class d implements TSLocationManager.LocationCallback {
        d() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onLocation(Location location) {
            TrackingService.this.a(location);
        }
    }

    class e implements TSLocationManager.LocationCallback {
        e() {
        }

        @Override
        public void onFailure(String str) {
            TSLog.logger.warn(TSLog.warn("MotionActivityCheck failed to retrieve lastLocation"));
        }

        @Override
        public void onLocation(Location location) {
            if (location == null || TrackingService.this.s == null) {
                TSLog.logger.warn(TSLog.warn("MotionActivityCheck failed with null location.  Retrying.\n- lastLocation: " + location + "\nmotionActivityCheckLocation: " + TrackingService.this.s));
                TSLocationManager.getInstance(TrackingService.this.getApplicationContext()).updateLocationRequest();
                return;
            }
            float fDistanceTo = (location.distanceTo(TrackingService.this.s) - TrackingService.this.s.getAccuracy()) - location.getAccuracy();
            long jElapsedTimeMillis = TSLocationManager.elapsedTimeMillis(location, TrackingService.this.s);
            TrackingService.this.s = null;
            TSLog.logger.info(TSLog.info("Distance from motion-activity check location: " + fDistanceTo));
            TSConfig tSConfig = TSConfig.getInstance(TrackingService.this.getApplicationContext());
            int iIntValue = tSConfig.getStationaryRadius().intValue();
            if (iIntValue < 25) {
                iIntValue = 25;
            }
            if (tSConfig.getDistanceFilter().floatValue() > 0.0f || fDistanceTo <= iIntValue) {
                if (TrackingService.this.a(location)) {
                    return;
                }
                TrackingService trackingService = TrackingService.this;
                trackingService.a(jElapsedTimeMillis, trackingService.s);
                return;
            }
            if (TrackingService.this.v != null && TrackingService.this.v.isLocationAvailable()) {
                TSLocationManager.getInstance(TrackingService.this.getApplicationContext()).updateLocationRequest();
                return;
            }
            TSLog.logger.warn(TSLog.warn("MotionActivityCheck fired with no location availability:  Retrying"));
            TrackingService trackingService2 = TrackingService.this;
            trackingService2.a(jElapsedTimeMillis, trackingService2.s);
        }
    }

    static class f implements TSLocationCallback {
        private final boolean a;
        private final Context b;
        private final TSLocationCallback c;

        f(Context context, boolean z, TSLocationCallback tSLocationCallback) {
            this.b = context;
            this.a = z;
            this.c = tSLocationCallback;
            if (z) {
                com.transistorsoft.locationmanager.crash.a.a(context).f();
            } else {
                com.transistorsoft.locationmanager.crash.a.a(context).h();
            }
        }

        @Override
        public void onError(Integer num) {
            TrackingService.z.set(0);
            TSLocationCallback tSLocationCallback = this.c;
            if (tSLocationCallback != null) {
                tSLocationCallback.onError(num);
            }
            if (TSConfig.getInstance(this.b).getEnabled().booleanValue()) {
                if (this.a) {
                    TSLocationManager.getInstance(this.b).requestLocationUpdates();
                    return;
                }
                if (LocationAuthorization.hasActivityPermission(this.b) || -1 == num.intValue() || 1 == num.intValue() || 499 == num.intValue() || 3 == num.intValue()) {
                    return;
                }
                TSLog.logger.warn(TSLog.warn("TSMotionChangeCallback received error: " + num + ".  Re-executing .changePace(" + this.a + ")"));
                TrackingService.changePace(this.b, this.a, null);
            }
        }

        @Override
        public void onLocation(TSLocation tSLocation) {
            TrackingService.z.set(0);
            TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(this.b);
            TSLocationCallback tSLocationCallback = this.c;
            if (tSLocationCallback != null) {
                tSLocationCallback.onLocation(tSLocation);
            }
            if (this.a) {
                ActivityRecognitionService.start(this.b);
                return;
            }
            tSGeofenceManager.startMonitoringStationaryRegion(tSLocation.getLocation());
            if (TSConfig.getInstance(this.b).getUseSignificantChangesOnly().booleanValue()) {
                return;
            }
            TrackingService.b(this.b, BackgroundGeolocation.EVENT_MOTIONCHANGE);
        }
    }

    private void c(Intent intent) {
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (LocationAvailability.hasLocationAvailability(intent)) {
            TSLog.logger.info(TSLog.info("Location availability: " + LocationAvailability.extractLocationAvailability(intent).isLocationAvailable()));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(TSLog.header("TrackingService: LocationResult"));
        final LocationResult locationResultExtractResult = LocationResult.extractResult(intent);
        TSGeofenceManager.getInstance(this).setLocation(locationResultExtractResult.getLastLocation(), tSConfig.getIsMoving().booleanValue());
        if (locationResultExtractResult.getLastLocation() == null) {
            TSLog.logger.warn(TSLog.error("Unexpected null from LocationResult.getLastLocation() while trying to determine distance from stoppedAtLocation"));
            return;
        }
        for (Location location : locationResultExtractResult.getLocations()) {
            if (location.getExtras() == null) {
                location.setExtras(new Bundle());
            }
            long jLocationAge = TSLocationManager.locationAge(location);
            sb.append(TSLog.boxRow(TSLog.ICON_PIN + location));
            sb.append(TSLog.boxRow("Age: " + jLocationAge + "ms, time: " + location.getTime()));
        }
        TSLog.logger.debug(sb.toString());
        final TSLocationManager tSLocationManager = TSLocationManager.getInstance(getApplicationContext());
        BackgroundGeolocation.getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                tSLocationManager.onLocationResult(locationResultExtractResult);
            }
        });
        if (!tSConfig.getDisableStopDetection().booleanValue()) {
            b(locationResultExtractResult.getLastLocation());
        }
        this.w = locationResultExtractResult;
    }

    public static void changePace(Context context, boolean z2, TSLocationCallback tSLocationCallback) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        if (!tSConfig.getEnabled().booleanValue()) {
            TSLog.warn(TSLog.warn("Refused attempt to execute changePace while disabled <IGNORED>"));
            if (tSLocationCallback != null) {
                tSLocationCallback.onError(-1);
                return;
            }
            return;
        }
        boolean zHasBackgroundPermission = LocationAuthorization.hasBackgroundPermission(context);
        if (LifecycleManager.getInstance().isBackground() && !tSConfig.getIsMoving().booleanValue() && z2 && !zHasBackgroundPermission) {
            TSLog.logger.warn(TSLog.warn("Cannot changePace(true) while in the background with WhenInUse authorization"));
            if (tSConfig.requestsLocationAlways()) {
                LocationAuthorization.withBackgroundPermission(context, new b(context, z2, tSLocationCallback));
                return;
            } else {
                if (tSLocationCallback != null) {
                    tSLocationCallback.onError(3);
                    return;
                }
                return;
            }
        }
        if (tSConfig.getMotionTriggerDelay().longValue() >= 0) {
            TSScheduleManager.getInstance(context).cancelOneShot(MotionTriggerDelayEvent.ACTION);
        }
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(context);
        boolean zBooleanValue = tSConfig.getIsMoving().booleanValue();
        if (tSLocationCallback == null && isAcquiringMotionChange()) {
            AtomicInteger atomicInteger = z;
            if (tSLocationManager.getRequest(atomicInteger.get()) != null && z2 == zBooleanValue) {
                TSLog.logger.debug(TSLog.warn("Waiting for existing motionchange request #" + atomicInteger.get() + " to complete"));
                return;
            }
        }
        tSConfig.setIsMoving(Boolean.valueOf(z2));
        TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(context);
        if (z2) {
            HeartbeatService.stop(context);
            tSGeofenceManager.startMonitoringSignificantLocationChanges();
            tSGeofenceManager.stopMonitoringStationaryRegion();
            if (!tSConfig.getUseSignificantChangesOnly().booleanValue()) {
                b(context, BackgroundGeolocation.EVENT_MOTIONCHANGE);
            }
        } else {
            TSScheduleManager.getInstance(context).cancelOneShot(MotionActivityCheckEvent.ACTION);
            tSGeofenceManager.stopMonitoringSignificantLocationChanges();
            HeartbeatService.start(context);
        }
        if (isAcquiringMotionChange()) {
            AtomicInteger atomicInteger2 = z;
            tSLocationManager.cancelRequest(atomicInteger2.get());
            atomicInteger2.set(0);
        }
        TSMotionChangeRequest tSMotionChangeRequestBuild = new TSMotionChangeRequest.Builder(context).setCallback(new f(context, z2, tSLocationCallback)).build();
        z.set(tSMotionChangeRequestBuild.getId());
        tSLocationManager.getCurrentPosition(tSMotionChangeRequestBuild);
        if (zBooleanValue && !z2) {
            tSLocationManager.stopUpdatingLocation();
            TSScheduleManager.getInstance(context).cancelOneShot(StopTimeoutEvent.ACTION);
        }
        TSLog.logger.info(TSLog.notice("setPace: " + zBooleanValue + " → " + z2));
    }

    public static void changeTrackingMode(Context context, int i, TSLocationCallback tSLocationCallback) {
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(context);
        TSConfig tSConfig = TSConfig.getInstance(context);
        tSLocationManager.stopUpdatingLocation();
        ActivityRecognitionService.stop(context);
        if (isAcquiringMotionChange()) {
            AtomicInteger atomicInteger = z;
            tSLocationManager.cancelRequest(atomicInteger.get());
            atomicInteger.set(0);
        }
        tSConfig.setEnabled(Boolean.FALSE, true);
        start(context, tSLocationCallback);
    }

    public static Intent getIntent(Context context) {
        return new Intent(context, (Class<?>) TrackingService.class);
    }

    public static PendingIntent getPendingIntent(Context context) {
        return getPendingIntent(context, null);
    }

    private void i() {
        TSScheduleManager.getInstance(getApplicationContext()).cancelOneShot(MotionActivityCheckEvent.ACTION);
        this.s = null;
    }

    public static boolean isAcquiringMotionChange() {
        return z.get() != 0;
    }

    private void j() {
        Context applicationContext = getApplicationContext();
        TSScheduleManager.getInstance(applicationContext).cancelOneShot(StopTimeoutEvent.ACTION);
        this.q = false;
        this.r = null;
        if (TSConfig.getInstance(applicationContext).getIsMoving().booleanValue()) {
            TSMediaPlayer.getInstance().debug(applicationContext, "tslocationmanager_bell_ding_pop");
        }
    }

    private void k() {
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        TSLog.logger.info(TSLog.header("TrackingService motionchange: " + tSConfig.getIsMoving()));
        if (this.q && !tSConfig.getIsMoving().booleanValue()) {
            j();
        }
        if (!tSConfig.getIsMoving().booleanValue()) {
            if (this.u) {
                TSLog.logger.info(TSLog.info("Stopping on stationary"));
                stop(getApplicationContext());
                return;
            }
            a(false);
            this.t = null;
            j();
            i();
            TSLocationManager.getInstance(getApplicationContext()).stopUpdatingLocation();
            return;
        }
        if (tSConfig.getStopAfterElapsedMinutes().intValue() > 0 && this.t == null) {
            long jIntValue = ((long) tSConfig.getStopAfterElapsedMinutes().intValue()) * 60000;
            this.t = new Date(System.currentTimeMillis() + jIntValue);
            TSScheduleManager.getInstance(getApplicationContext()).oneShot(StopAfterElapsedMinutesEvent.ACTION, jIntValue, true, true);
        }
        if (tSConfig.getStopOnStationary().booleanValue()) {
            this.u = true;
            EventBus eventBus = EventBus.getDefault();
            if (eventBus.isRegistered(this)) {
                return;
            }
            eventBus.register(this);
        }
    }

    public static void restart(Context context) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        if (Build.VERSION.SDK_INT <= 31) {
            ActivityRecognitionService.start(context);
        }
        if (tSConfig.getIsMoving().booleanValue()) {
            TSLocationManager.getInstance(context).requestLocationUpdates();
        } else {
            TSLocationManager.getInstance(context).getLastLocation(new a(context));
        }
    }

    public static void start(Context context) {
        start(context, null);
    }

    public static void stop(Context context) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        TSScheduleManager tSScheduleManager = TSScheduleManager.getInstance(context);
        if (tSConfig.getIsMoving().booleanValue()) {
            tSScheduleManager.cancelOneShot(StopTimeoutEvent.ACTION);
        } else {
            tSScheduleManager.cancelOneShot(MotionTriggerDelayEvent.ACTION);
        }
        Boolean bool = Boolean.FALSE;
        tSConfig.setEnabled(bool);
        tSConfig.setIsMoving(bool);
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(context);
        TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(context);
        if (isAcquiringMotionChange()) {
            AtomicInteger atomicInteger = z;
            tSLocationManager.cancelRequest(atomicInteger.get());
            atomicInteger.set(0);
        }
        if (tSConfig.getStopAfterElapsedMinutes().intValue() > 0) {
            TSScheduleManager.getInstance(context).cancelOneShot(StopAfterElapsedMinutesEvent.ACTION);
        }
        stopService(context);
        tSLocationManager.stop();
        tSGeofenceManager.stop();
        tSGeofenceManager.stopMonitoringStationaryRegion();
        ActivityRecognitionService.stop(context);
        HeartbeatService.stop(context);
        HttpService.getInstance(context).stopMonitoringConnectivityChanges(context);
        DeviceSettings.getInstance().stopMonitoringPowerSaveChanges(context);
        com.transistorsoft.locationmanager.crash.a.a(context).h();
    }

    public static void stopService(Context context) {
        AbstractService.stop(context, TrackingService.class);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onActivityTransitionEvent(ActivityTransitionEvent activityTransitionEvent) {
        if (TSConfig.getInstance(getApplicationContext()).isLocationTrackingMode() && activityTransitionEvent.getTransitionType() == 0 && activityTransitionEvent.getActivityType() != 3 && this.q) {
            j();
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onConfigChange(ConfigChangeEvent configChangeEvent) {
        TSConfig tSConfig = TSConfig.getInstance(this);
        if (configChangeEvent.isDirty("foregroundService") && Build.VERSION.SDK_INT < 26) {
            if (tSConfig.getForegroundService().booleanValue()) {
                startForeground(ForegroundNotification.NOTIFICATION_ID, ForegroundNotification.build(this));
            } else {
                stopForeground(true);
            }
        }
        if (tSConfig.getForegroundService().booleanValue() && configChangeEvent.isDirty(TSNotification.NAME)) {
            ((NotificationManager) getSystemService(TSNotification.NAME)).notify(ForegroundNotification.NOTIFICATION_ID, ForegroundNotification.build(getApplicationContext()));
        }
        if (configChangeEvent.isDirty("heartbeatInterval") && !tSConfig.getIsMoving().booleanValue()) {
            if (tSConfig.getHeartbeatInterval().intValue() > 0) {
                HeartbeatService.start(getApplicationContext());
            } else {
                HeartbeatService.stop(getApplicationContext());
            }
        }
        if (configChangeEvent.isDirty("stopTimeout") && this.q) {
            j();
            TSLocationManager.getInstance(getApplicationContext()).getLastGoodLocation(new d());
        }
        if (configChangeEvent.isDirty("stopAfterElapsedMinutes")) {
            int iIntValue = tSConfig.getStopAfterElapsedMinutes().intValue();
            TSScheduleManager tSScheduleManager = TSScheduleManager.getInstance(getApplicationContext());
            tSScheduleManager.cancelOneShot(StopAfterElapsedMinutesEvent.ACTION);
            this.t = null;
            if (iIntValue > 0) {
                long j = ((long) iIntValue) * 60000;
                this.t = new Date(System.currentTimeMillis() + j);
                tSScheduleManager.oneShot(StopAfterElapsedMinutesEvent.ACTION, j, true, true);
            }
        }
        if (configChangeEvent.isDirty("useSignificantChangesOnly") && tSConfig.getUseSignificantChangesOnly().booleanValue() && tSConfig.getIsMoving().booleanValue()) {
            a(false);
        }
        if (configChangeEvent.isDirty("disableStopDetection")) {
            if (tSConfig.getDisableStopDetection().booleanValue()) {
                i();
                j();
            } else {
                if (this.w == null) {
                    TSLocationManager.getInstance(getApplicationContext()).updateLocationRequest();
                    return;
                }
                Location location = new Location("TSLocationManager");
                location.set(this.w.getLastLocation());
                location.setTime(System.currentTimeMillis());
                b(location);
            }
        }
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
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (this.q && !tSConfig.getUseSignificantChangesOnly().booleanValue()) {
            j();
        }
        TSScheduleManager.getInstance(getApplicationContext()).cancelOneShot(MotionActivityCheckEvent.ACTION);
        EventBus eventBus = EventBus.getDefault();
        if (eventBus.isRegistered(this)) {
            eventBus.unregister(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMotionActivityCheckEvent(MotionActivityCheckEvent motionActivityCheckEvent) {
        if (this.q) {
            return;
        }
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (LocationAuthorization.hasActivityPermission(getApplicationContext()) && !tSConfig.getDisableMotionActivityUpdates().booleanValue()) {
            ActivityRecognitionService.start(getApplicationContext());
        } else if (this.w != null) {
            TSLocationManager.getInstance(getApplicationContext()).getLastLocation(new e());
        } else {
            TSLog.logger.warn(TSLog.warn("onMotionActivityCheckEvent fired but found a null mLastLocationResult"));
            TSLocationManager.getInstance(getApplicationContext()).updateLocationRequest();
        }
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!a(intent, i2, true)) {
            return 3;
        }
        EventBus eventBus = EventBus.getDefault();
        if (!eventBus.isRegistered(this)) {
            eventBus.register(this);
        }
        String action = intent.getAction();
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (action != null) {
            if (action.contains(BackgroundGeolocation.EVENT_MOTIONCHANGE)) {
                if ((tSConfig.getIsMoving().booleanValue() && !tSConfig.getUseSignificantChangesOnly().booleanValue()) || tSConfig.getNotification().getSticky().booleanValue()) {
                    a(true);
                }
                if (tSConfig.getIsMoving().booleanValue()) {
                    ForegroundNotification.a(new Date().getTime());
                } else {
                    ForegroundNotification.a(0L);
                }
                k();
            } else if (action.equalsIgnoreCase(StopTimeoutEvent.ACTION)) {
                if (!tSConfig.isLocationTrackingMode() || !tSConfig.getIsMoving().booleanValue()) {
                    a(false);
                } else if (!isAcquiringMotionChange()) {
                    TSLocationManager.getInstance(getApplicationContext()).getLastGoodLocation(new c());
                }
            } else if (action.equalsIgnoreCase("start")) {
                TSLog.logger.debug("action: start");
                a(true);
            }
        } else if (LocationResult.hasResult(intent)) {
            if (tSConfig.getIsMoving().booleanValue() && !tSConfig.getUseSignificantChangesOnly().booleanValue()) {
                a(true);
            }
            c(intent);
        } else if (LocationAvailability.hasLocationAvailability(intent)) {
            b(intent);
        } else {
            TSLog.logger.warn(TSLog.warn("UNKNOWN INTENT RECEIVED: " + intent.toString() + ", " + intent.getExtras()));
        }
        if (tSConfig.getEnabled().booleanValue() && tSConfig.getNotification().getSticky().booleanValue()) {
            a(true);
        }
        a(i2);
        return 3;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onStopAfterElapsedMinutesEvent(StopAfterElapsedMinutesEvent stopAfterElapsedMinutesEvent) {
        this.t = null;
    }

    public static PendingIntent getPendingIntent(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        return Build.VERSION.SDK_INT >= 26 ? PendingIntent.getForegroundService(applicationContext, 0, getIntent(applicationContext), Util.getPendingIntentFlags(134217728)) : PendingIntent.getService(applicationContext, 0, getIntent(applicationContext), 134217728);
    }

    public static void start(Context context, TSLocationCallback tSLocationCallback) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        boolean zBooleanValue = tSConfig.getEnabled().booleanValue();
        tSConfig.setEnabled(Boolean.TRUE);
        TSLocationManagerActivity.startIfEnabled(context, TSLocationManagerActivity.ACTION_LOCATION_SETTINGS);
        TSGeofenceManager.getInstance(context).start();
        HttpService.getInstance(context).startMonitoringConnectivityChanges(context);
        DeviceSettings.getInstance().startMonitoringPowerSaveChanges(context);
        if (!tSConfig.isLocationTrackingMode()) {
            GeofencingService.changePace(context, tSConfig.getIsMoving().booleanValue(), tSLocationCallback);
            return;
        }
        ActivityRecognitionService.start(context);
        if (!zBooleanValue) {
            changePace(context, tSConfig.getIsMoving().booleanValue(), tSLocationCallback);
            return;
        }
        TSMotionChangeRequest tSMotionChangeRequestBuild = new TSMotionChangeRequest.Builder(context).setCallback(new f(context, tSConfig.getIsMoving().booleanValue(), tSLocationCallback)).setSamples(3).setPersist(false).build();
        z.set(tSMotionChangeRequestBuild.getId());
        TSLocationManager.getInstance(context).getCurrentPosition(tSMotionChangeRequestBuild);
        if (tSConfig.getIsMoving().booleanValue()) {
            return;
        }
        HeartbeatService.start(context);
    }

    static void b(Context context) {
        if (TSConfig.getInstance(context).getDisableStopDetection().booleanValue()) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) TrackingService.class);
        intent.setAction(StopTimeoutEvent.ACTION);
        AbstractService.startForegroundService(context, intent);
    }

    public void a(long j, Location location) {
        if (location == null) {
            TSLog.logger.warn(TSLog.warn("beginMotionActivityCheckTimer was provided null location"));
            return;
        }
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (tSConfig.getDisableStopDetection().booleanValue()) {
            return;
        }
        if (this.s == null || tSConfig.getDistanceFilter().floatValue() > 0.0f) {
            this.s = location;
            long j2 = j + 60000;
            long j3 = j2 > 300000 ? 300000L : j2;
            TSScheduleManager tSScheduleManager = TSScheduleManager.getInstance(getApplicationContext());
            tSScheduleManager.cancelOneShot(MotionActivityCheckEvent.ACTION);
            tSScheduleManager.oneShot(MotionActivityCheckEvent.ACTION, j3, true, false);
        }
    }

    public static void b(Context context, String str) {
        AbstractService.launchService(context, TrackingService.class, str);
    }

    private void b(Location location) {
        if (this.q && this.r == null) {
            TSLog.logger.debug("Received stoppedAt location");
            this.r = location;
        }
        LocationResult locationResult = this.w;
        if (locationResult == null) {
            return;
        }
        long jElapsedTimeMillis = TSLocationManager.elapsedTimeMillis(location, locationResult.getLastLocation());
        if (LocationAuthorization.hasActivityPermission(getApplicationContext())) {
            if (ActivityRecognitionService.getLastActivity().getActivityType() != 3) {
                if (this.q) {
                    return;
                }
                a(jElapsedTimeMillis, location);
                return;
            } else if (!this.q && a(location)) {
                return;
            }
        } else if (!this.q) {
            a(jElapsedTimeMillis, location);
            return;
        }
        if (this.r == null) {
            TSLog.logger.warn(TSLog.warn("performStopDetection found mStoppedAtLocation == null"));
            return;
        }
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        float fDistanceTo = (location.distanceTo(this.r) - this.r.getAccuracy()) - location.getAccuracy();
        float fIntValue = tSConfig.getStationaryRadius().intValue();
        if (fIntValue <= 25.0f) {
            fIntValue = 25.0f;
        }
        TSLog.logger.info(TSLog.info("Distance from stoppedAtLocation: " + fDistanceTo));
        if (fDistanceTo > fIntValue) {
            TSLog.logger.debug(TSLog.info("Force cancel cancel stopTimeout due to apparent movement beyond stoppedAt location"));
            if (this.q) {
                j();
            }
            a(jElapsedTimeMillis, location);
        }
    }

    public boolean a(Location location) {
        if (this.q) {
            return true;
        }
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (tSConfig.getDisableStopDetection().booleanValue()) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        if (location != null && location.isFromMockProvider()) {
            TSLog.logger.debug("🐞 Mock location detected with motion-activity STILL:  stopTimeout timer would normally be initiated here 🐞.");
            return false;
        }
        this.q = true;
        long jLongValue = tSConfig.getStopTimeout().longValue() * 60000;
        if (i >= 26 && tSConfig.getIsMoving().booleanValue() && tSConfig.getUseSignificantChangesOnly().booleanValue()) {
            jLongValue = 1200000;
        }
        long j = jLongValue;
        if (j <= 0) {
            TSLog.logger.debug(TSLog.notice("Stop-timeout elapsed!"));
            changePace(getApplicationContext(), false, null);
            return true;
        }
        TSMediaPlayer.getInstance().debug(getApplicationContext(), "tslocationmanager_chime_bell_confirm");
        TSScheduleManager tSScheduleManager = TSScheduleManager.getInstance(getApplicationContext());
        tSScheduleManager.oneShot(StopTimeoutEvent.ACTION, j, true, true);
        tSScheduleManager.cancelOneShot(MotionActivityCheckEvent.ACTION);
        LocationAvailability locationAvailability = this.v;
        if (locationAvailability != null && locationAvailability.isLocationAvailable()) {
            TSLocationManager.getInstance(getApplicationContext()).requestLocationUpdates();
        } else {
            this.r = location;
        }
        return true;
    }

    private void b(Intent intent) {
        LocationAvailability locationAvailabilityExtractLocationAvailability = LocationAvailability.extractLocationAvailability(intent);
        if (this.v == null || locationAvailabilityExtractLocationAvailability.isLocationAvailable() != this.v.isLocationAvailable()) {
            TSLog.logger.info(TSLog.info("Location availability: " + locationAvailabilityExtractLocationAvailability.isLocationAvailable()));
        }
        this.v = locationAvailabilityExtractLocationAvailability;
    }

    public static void changePace(Context context, boolean z2) {
        changePace(context, z2, null);
    }
}
