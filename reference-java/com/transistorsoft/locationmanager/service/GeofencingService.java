package com.transistorsoft.locationmanager.service;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingClient;
import com.google.android.gms.location.GeofencingEvent;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.adapter.callback.TSLocationCallback;
import com.transistorsoft.locationmanager.data.sqlite.GeofenceDAO;
import com.transistorsoft.locationmanager.data.sqlite.SQLiteLocationDAO;
import com.transistorsoft.locationmanager.event.GeofenceEvent;
import com.transistorsoft.locationmanager.event.MotionChangeEvent;
import com.transistorsoft.locationmanager.event.PersistEvent;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import com.transistorsoft.locationmanager.geofence.TSGeofenceManager;
import com.transistorsoft.locationmanager.http.HttpService;
import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.location.TSMotionChangeRequest;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.logger.TSMediaPlayer;
import com.transistorsoft.locationmanager.plugin.TSPlugin;
import com.transistorsoft.locationmanager.util.LocationAuthorization;
import com.transistorsoft.locationmanager.util.Util;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.eventbus.EventBus;

public class GeofencingService extends AbstractService {
    private static final AtomicInteger r = new AtomicInteger(0);
    private StopTimeoutEvaluator q;

    class a implements Runnable {
        private final Intent a;
        private final int b;

        a(Intent intent, int i) {
            this.b = i;
            this.a = intent;
        }

        @Override
        public void run() {
            Context applicationContext = GeofencingService.this.getApplicationContext();
            String action = this.a.getAction();
            TSConfig tSConfig = TSConfig.getInstance(applicationContext);
            TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(applicationContext);
            if (!tSConfig.isLocationTrackingMode() && ((tSConfig.getIsMoving().booleanValue() && tSConfig.getGeofenceModeHighAccuracy().booleanValue() && tSGeofenceManager.isMonitoringGeofencesInProximity()) || tSConfig.getNotification().getSticky().booleanValue())) {
                GeofencingService.this.a(true);
            }
            if (action != null) {
                if (!action.equalsIgnoreCase("start") && action.equalsIgnoreCase(TSGeofenceManager.ACTION_STATIONARY_GEOFENCE)) {
                    GeofencingEvent geofencingEventFromIntent = GeofencingEvent.fromIntent(this.a);
                    if (geofencingEventFromIntent.getTriggeringGeofences() != null) {
                        GeofencingService.this.b(geofencingEventFromIntent);
                    }
                }
                GeofencingService.this.a(this.b);
                return;
            }
            if (LocationResult.hasResult(this.a)) {
                GeofencingService.this.a(LocationResult.extractResult(this.a));
                GeofencingService.this.a(this.b);
            } else if (LocationAvailability.hasLocationAvailability(this.a)) {
                GeofencingService.this.a(LocationAvailability.extractLocationAvailability(this.a));
                GeofencingService.this.a(this.b);
            } else if (GeofencingEvent.fromIntent(this.a) != null) {
                TSLocationManager.getInstance(applicationContext).getLastLocation(new C0083a());
            }
        }

        class C0083a implements TSLocationManager.LocationCallback {
            C0083a() {
            }

            public void a(Location location) {
                a aVar = a.this;
                GeofencingService.this.a(GeofencingEvent.fromIntent(aVar.a), location);
                a aVar2 = a.this;
                GeofencingService.this.a(aVar2.b);
            }

            @Override
            public void onFailure(String str) {
                BackgroundGeolocation.getThreadPool().execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f$0.a();
                    }
                });
            }

            @Override
            public void onLocation(final Location location) {
                BackgroundGeolocation.getThreadPool().execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f$0.a(location);
                    }
                });
            }

            public void a() {
                a aVar = a.this;
                GeofencingService.this.a(GeofencingEvent.fromIntent(aVar.a), (Location) null);
                a aVar2 = a.this;
                GeofencingService.this.a(aVar2.b);
            }
        }
    }

    private static class b implements TSLocationCallback {
        private final TSLocationCallback a;
        private final boolean b;
        private final Context c;

        b(Context context, boolean z, TSLocationCallback tSLocationCallback) {
            this.c = context;
            this.b = z;
            this.a = tSLocationCallback;
        }

        @Override
        public void onError(Integer num) {
            TSLocationCallback tSLocationCallback = this.a;
            if (tSLocationCallback != null) {
                tSLocationCallback.onError(num);
            }
            if (this.b) {
                return;
            }
            ActivityRecognitionService.start(this.c);
        }

        @Override
        public void onLocation(TSLocation tSLocation) {
            GeofencingService.r.set(0);
            TSLocationCallback tSLocationCallback = this.a;
            if (tSLocationCallback != null) {
                tSLocationCallback.onLocation(tSLocation);
            }
            TSGeofenceManager.getInstance(this.c).startMonitoringStationaryRegion(tSLocation.getLocation());
            if (this.b) {
                return;
            }
            ActivityRecognitionService.start(this.c);
        }
    }

    public void a(LocationAvailability locationAvailability) {
    }

    public static void changePace(Context context, boolean z, TSLocationCallback tSLocationCallback) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        if (!tSConfig.getGeofenceModeHighAccuracy().booleanValue()) {
            z = false;
        }
        tSConfig.setIsMoving(Boolean.valueOf(z));
        TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(context);
        if (z) {
            HeartbeatService.stop(context);
            tSGeofenceManager.startMonitoringSignificantLocationChanges();
        } else {
            if (tSConfig.getNotification().getSticky().booleanValue()) {
                AbstractService.launchService(context, GeofencingService.class, "start");
            } else {
                stopService(context);
            }
            HeartbeatService.start(context);
            tSGeofenceManager.stopMonitoringSignificantLocationChanges();
            tSGeofenceManager.setIsMoving(false);
        }
        if (tSConfig.getGeofenceModeHighAccuracy().booleanValue()) {
            ForegroundNotification.a(z ? new Date().getTime() : 0L);
        }
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(context);
        if (isAcquiringMotionChange()) {
            AtomicInteger atomicInteger = r;
            tSLocationManager.cancelRequest(atomicInteger.get());
            atomicInteger.set(0);
        }
        TSMotionChangeRequest tSMotionChangeRequestBuild = new TSMotionChangeRequest.Builder(context).setCallback(new b(context, z, tSLocationCallback)).build();
        r.set(tSMotionChangeRequestBuild.getId());
        tSLocationManager.getCurrentPosition(tSMotionChangeRequestBuild);
    }

    public static PendingIntent getPendingIntent(Context context) {
        return getPendingIntent(context, null);
    }

    public static boolean isAcquiringMotionChange() {
        return r.get() != 0;
    }

    public static void stop(Context context) {
        stopService(context);
        if (isAcquiringMotionChange()) {
            TSLocationManager tSLocationManager = TSLocationManager.getInstance(context);
            AtomicInteger atomicInteger = r;
            tSLocationManager.cancelRequest(atomicInteger.get());
            atomicInteger.set(0);
        }
    }

    public static void stopService(Context context) {
        AbstractService.stop(context, GeofencingService.class);
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        if (Build.VERSION.SDK_INT >= 29) {
            super.a(getClass().getSimpleName(), 8);
        } else {
            super.a(getClass().getSimpleName(), 0);
        }
        final Context applicationContext = getApplicationContext();
        this.q = new StopTimeoutEvaluator(1200000, new StopTimeoutEvaluator.a() {
            @Override
            public final void a() {
                GeofencingService.changePace(applicationContext, false, null);
            }
        });
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!a(intent, i2, true)) {
            return 2;
        }
        BackgroundGeolocation.getThreadPool().execute(new a(intent, i2));
        return 3;
    }

    public void b(GeofencingEvent geofencingEvent) {
        int activityType;
        boolean zHasTriggerActivity;
        Context applicationContext = getApplicationContext();
        TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(applicationContext);
        TSConfig tSConfig = TSConfig.getInstance(applicationContext);
        if (!tSConfig.getEnabled().booleanValue()) {
            TSLog.logger.warn(TSLog.warn("Stationary geofence exit fired while disabled <IGNORED>"));
            tSGeofenceManager.stopMonitoringStationaryRegion();
            return;
        }
        Location stationaryLocation = tSGeofenceManager.getStationaryLocation();
        Location triggeringLocation = geofencingEvent.getTriggeringLocation();
        if (triggeringLocation != null && stationaryLocation != null) {
            float fDistanceTo = triggeringLocation.distanceTo(stationaryLocation);
            float fIntValue = tSConfig.getStationaryRadius().intValue();
            if (!tSConfig.isLocationTrackingMode() && !tSConfig.getGeofenceModeHighAccuracy().booleanValue()) {
                fIntValue = tSConfig.getGeofenceProximityRadius().longValue() / 2.0f;
            } else if (fIntValue < 150.0f) {
                fIntValue = 150.0f;
            }
            TSLog.logger.debug(TSLog.header("Stationary EXIT distance evaluation") + TSLog.boxRow("distance=" + fDistanceTo + "m, accuracy=" + (triggeringLocation.hasAccuracy() ? triggeringLocation.getAccuracy() : 0.0f) + "m, radius=" + fIntValue + "m") + TSLog.boxRow("📍  Stationary=" + stationaryLocation) + TSLog.boxRow("📍  Trigger=" + triggeringLocation) + TSLog.BOX_BOTTOM);
            if (fIntValue > 0.0f && fDistanceTo < fIntValue) {
                TSLog.logger.warn(TSLog.warn("Ignoring spurious stationary geofence EXIT"));
                tSGeofenceManager.startMonitoringStationaryRegion(stationaryLocation);
                return;
            }
        }
        Location triggeringLocation2 = geofencingEvent.getTriggeringLocation();
        tSGeofenceManager.setLocation(triggeringLocation2, tSConfig.getIsMoving().booleanValue());
        if (tSConfig.isLocationTrackingMode()) {
            if (LocationAuthorization.hasActivityPermission(applicationContext)) {
                activityType = ActivityRecognitionService.getLastActivity().getActivityType();
                zHasTriggerActivity = tSConfig.hasTriggerActivity(activityType);
            } else {
                activityType = 3;
                zHasTriggerActivity = true;
            }
            if (zHasTriggerActivity || activityType == 3) {
                TrackingService.changePace(applicationContext, true);
            }
        } else {
            TSLocation.applyExtras(applicationContext, triggeringLocation2);
            triggeringLocation2.getExtras().putString(NotificationCompat.CATEGORY_EVENT, BackgroundGeolocation.EVENT_MOTIONCHANGE);
            triggeringLocation2.getExtras().remove("sample");
            EventBus.getDefault().post(new MotionChangeEvent(new TSLocation(applicationContext, triggeringLocation2, ActivityRecognitionService.getMostProbableActivity())));
            if (tSConfig.getGeofenceModeHighAccuracy().booleanValue()) {
                a(true);
                changePace(getApplicationContext(), true, null);
            } else {
                tSGeofenceManager.startMonitoringStationaryRegion(triggeringLocation2);
            }
        }
        TSMediaPlayer.getInstance().debug(getApplicationContext(), "tslocationmanager_zap_fast");
        TSLog.logger.info(TSLog.header("GeofencingService: Stationary geofence EXIT") + TSLog.boxRow(TSLog.ICON_PIN + triggeringLocation2));
    }

    public static PendingIntent getPendingIntent(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) GeofencingService.class);
        if (str != null) {
            intent.setAction(str);
        }
        return Build.VERSION.SDK_INT >= 26 ? PendingIntent.getForegroundService(context, 0, intent, Util.getPendingIntentFlags(134217728)) : PendingIntent.getService(context, 0, intent, 134217728);
    }

    public void a(GeofencingEvent geofencingEvent, Location location) {
        String str;
        String str2;
        int i;
        Context applicationContext = getApplicationContext();
        if (geofencingEvent.hasError()) {
            TSLog.logger.warn(TSLog.warn("Geofencing error: " + geofencingEvent.getErrorCode()));
            if (geofencingEvent.getErrorCode() == 1000) {
                TSGeofenceManager.getInstance(applicationContext).reset();
            }
        } else {
            if (geofencingEvent.getTriggeringGeofences() == null) {
                TSLog.logger.warn(TSLog.warn("GeofencingEvent.getTriggeringGeofences() returned null <IGNORED>"));
                return;
            }
            int geofenceTransition = geofencingEvent.getGeofenceTransition();
            int i2 = 2;
            int i3 = 1;
            if (geofenceTransition == 1 || geofenceTransition == 2 || geofenceTransition == 4) {
                int geofenceTransition2 = geofencingEvent.getGeofenceTransition();
                if (geofenceTransition2 == 1) {
                    str2 = "tslocationmanager_beep_trip_up_dry";
                    str = "ENTER";
                } else if (geofenceTransition2 == 2) {
                    str2 = "tslocationmanager_beep_trip_dry";
                    str = "EXIT";
                } else if (geofenceTransition2 != 4) {
                    str = "UNKNOWN";
                    str2 = "";
                } else {
                    str2 = "tslocationmanager_beep_trip_up_echo";
                    str = "DWELL";
                }
                StringBuilder sb = new StringBuilder();
                sb.append(TSLog.header("Geofencing Event: ".concat(str)));
                TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(getApplicationContext());
                GeofenceDAO geofenceDAO = GeofenceDAO.getInstance(getApplicationContext());
                ArrayList arrayList = new ArrayList();
                List<Geofence> triggeringGeofences = geofencingEvent.getTriggeringGeofences();
                Location triggeringLocation = geofencingEvent.getTriggeringLocation();
                Iterator<Geofence> it = triggeringGeofences.iterator();
                while (it.hasNext()) {
                    Geofence next = it.next();
                    TSGeofence tSGeofenceFind = geofenceDAO.find(next.getRequestId());
                    if (tSGeofenceFind != null && geofenceTransition2 == i2 && !tSGeofenceFind.isPolygon() && triggeringLocation != null) {
                        float[] fArr = new float[i3];
                        Location.distanceBetween(triggeringLocation.getLatitude(), triggeringLocation.getLongitude(), tSGeofenceFind.getLatitude(), tSGeofenceFind.getLongitude(), fArr);
                        float f = fArr[0];
                        float radius = tSGeofenceFind.getRadius();
                        float accuracy = triggeringLocation.hasAccuracy() ? triggeringLocation.getAccuracy() : 0.0f;
                        if (radius > 0.0f && f + accuracy < radius) {
                            TSLog.logger.warn(TSLog.header("Ignoring spurious geofence EXIT") + TSLog.boxRow("id=" + next.getRequestId()) + TSLog.boxRow("distance=" + f + "m, accuracy=" + accuracy + "m, radius=" + radius + "m") + TSLog.boxRow("📍  Trigger=" + triggeringLocation) + TSLog.BOX_BOTTOM);
                            arrayList.add(next);
                            it = it;
                            geofenceDAO = geofenceDAO;
                            i2 = 2;
                            i3 = 1;
                        }
                    }
                    GeofenceDAO geofenceDAO2 = geofenceDAO;
                    Iterator<Geofence> it2 = it;
                    if (tSGeofenceFind != null) {
                        if (tSGeofenceFind.isPolygon()) {
                            arrayList.add(next);
                            i = 1;
                            if (geofenceTransition2 == 1) {
                                TSMediaPlayer.getInstance().debug(applicationContext, "tslocationmanager_chime_short_on");
                                tSGeofenceManager.startMonitoringPolygon(tSGeofenceFind);
                                sb.append(TSLog.boxRow("ENTER containing geofence of Polygon: " + next.getRequestId()));
                            } else {
                                TSMediaPlayer.getInstance().debug(applicationContext, "tslocationmanager_chime_short_off");
                                String identifier = tSGeofenceFind.getIdentifier();
                                if (tSGeofenceManager.getPolygonState(identifier)) {
                                    tSGeofenceManager.setPolygonState(identifier, false);
                                    PolygonGeofencingService.handleGeofencingEvent(getApplicationContext(), identifier, geofencingEvent.getTriggeringLocation(), geofenceTransition2);
                                }
                                tSGeofenceManager.stopMonitoringPolygon(tSGeofenceFind.getIdentifier());
                                sb.append(TSLog.boxRow("EXIT containing geofence of Polygon: " + next.getRequestId()));
                            }
                        } else {
                            i = 1;
                            TSMediaPlayer.getInstance().debug(applicationContext, str2);
                            sb.append(TSLog.boxRow(next.getRequestId()));
                        }
                    } else {
                        i = 1;
                        GeofencingClient geofencingClient = LocationServices.getGeofencingClient(getApplicationContext());
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(next.getRequestId());
                        geofencingClient.removeGeofences(arrayList2);
                        TSLog.logger.error(TSLog.warn("Failed to find Geofence: " + next.getRequestId()));
                    }
                    i3 = i;
                    it = it2;
                    geofenceDAO = geofenceDAO2;
                    i2 = 2;
                }
                GeofenceDAO geofenceDAO3 = geofenceDAO;
                triggeringGeofences.removeAll(arrayList);
                sb.append(TSLog.BOX_BOTTOM);
                TSLog.logger.info(sb.toString());
                if (!triggeringGeofences.isEmpty()) {
                    TSConfig tSConfig = TSConfig.getInstance(applicationContext);
                    Location triggeringLocation2 = geofencingEvent.getTriggeringLocation();
                    TSLocation.applyExtras(applicationContext, triggeringLocation2);
                    tSGeofenceManager.setLocation(triggeringLocation2, tSConfig.getIsMoving().booleanValue());
                    TSLocationManager tSLocationManager = TSLocationManager.getInstance(applicationContext);
                    Bundle extras = triggeringLocation2.getExtras();
                    extras.putBoolean("isMoving", tSConfig.getIsMoving().booleanValue());
                    extras.putFloat(TSLocation.LOCATION_OPTIONS_ODOMETER, tSConfig.getOdometer().floatValue());
                    EventBus.getDefault().post(new TSLocation(applicationContext, triggeringLocation2, ActivityRecognitionService.getMostProbableActivity(), tSLocationManager.getCurrentLocationProvider()));
                    for (Geofence geofence : triggeringGeofences) {
                        GeofenceDAO geofenceDAO4 = geofenceDAO3;
                        TSGeofence tSGeofenceFind2 = geofenceDAO4.find(geofence.getRequestId());
                        if (tSGeofenceFind2 == null) {
                            TSLog.logger.error("Failed to find geofence record in database: " + geofence.getRequestId());
                        } else {
                            GeofenceEvent geofenceEvent = new GeofenceEvent(geofenceTransition2, tSGeofenceFind2, new TSLocation(applicationContext, triggeringLocation2, ActivityRecognitionService.getMostProbableActivity()));
                            if (tSConfig.getMaxRecordsToPersist().intValue() != 0) {
                                a(geofenceEvent.getLocation());
                            }
                            EventBus.getDefault().post(geofenceEvent);
                        }
                        geofenceDAO3 = geofenceDAO4;
                    }
                }
            }
        }
    }

    private void a(TSLocation tSLocation) {
        Context applicationContext = getApplicationContext();
        TSConfig tSConfig = TSConfig.getInstance(applicationContext);
        if (tSConfig.shouldPersist(tSLocation)) {
            if (EventBus.getDefault().hasSubscriberForEvent(PersistEvent.class)) {
                if (TSPlugin.getInstance().canUsePersistEvent(applicationContext)) {
                    EventBus.getDefault().post(new PersistEvent(applicationContext, tSLocation, tSConfig.getParams()));
                    return;
                } else {
                    TSLog.logger.warn(TSLog.warn("Failed to persist location"));
                    return;
                }
            }
            if (tSConfig.getMaxDaysToPersist().intValue() == 0 || !tSConfig.getPersist().booleanValue()) {
                return;
            }
            if (SQLiteLocationDAO.getInstance(applicationContext).persist(tSLocation)) {
                if (tSConfig.getAutoSync().booleanValue() && tSConfig.hasUrl()) {
                    HttpService.getInstance(applicationContext).flush(true);
                    return;
                }
                return;
            }
            TSLog.logger.error(TSLog.error("INSERT FAILURE" + tSLocation));
        }
    }

    public void a(LocationResult locationResult) {
        Context applicationContext = getApplicationContext();
        Location lastLocation = locationResult.getLastLocation();
        TSConfig tSConfig = TSConfig.getInstance(applicationContext);
        TSGeofenceManager.getInstance(this).setLocation(lastLocation, tSConfig.getIsMoving().booleanValue());
        TSLog.logger.info(TSLog.header("GeofencingService: Proximity evaluator") + TSLog.boxRow(TSLog.ICON_PIN + lastLocation.toString() + ", age: " + TSLocationManager.locationAge(lastLocation) + "ms, time: " + lastLocation.getTime()));
        TSMediaPlayer.getInstance().debug(applicationContext, "tslocationmanager_click_tap_done_checkbox5_full_vol");
        if (tSConfig.getIsMoving().booleanValue() && !tSConfig.isLocationTrackingMode() && tSConfig.getGeofenceModeHighAccuracy().booleanValue()) {
            if (!LocationAuthorization.hasActivityPermission(getApplicationContext()) || tSConfig.getDisableMotionActivityUpdates().booleanValue()) {
                if (!lastLocation.hasSpeed()) {
                    if (this.q.b()) {
                        return;
                    }
                    this.q.d();
                } else {
                    if (this.q.a(lastLocation) < 1.4d) {
                        if (this.q.b()) {
                            return;
                        }
                        this.q.d();
                        return;
                    }
                    this.q.a();
                }
            }
        }
    }
}
