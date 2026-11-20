package com.transistorsoft.locationmanager.service;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.OnSuccessListener;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.data.sqlite.GeofenceDAO;
import com.transistorsoft.locationmanager.data.sqlite.SQLiteLocationDAO;
import com.transistorsoft.locationmanager.event.GeofenceEvent;
import com.transistorsoft.locationmanager.event.PersistEvent;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import com.transistorsoft.locationmanager.geofence.TSGeofenceManager;
import com.transistorsoft.locationmanager.http.HttpService;
import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.logger.TSMediaPlayer;
import com.transistorsoft.locationmanager.plugin.TSPlugin;
import com.transistorsoft.locationmanager.util.LocationAuthorization;
import com.transistorsoft.locationmanager.util.Util;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.eventbus.EventBus;

public class PolygonGeofencingService extends AbstractService {
    private static final String t = "stopMonitoringPolygons";
    private final AtomicBoolean q = new AtomicBoolean(false);
    private final AtomicInteger r = new AtomicInteger(0);
    private StopTimeoutEvaluator s;

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
            if (action != null) {
                if (action.equalsIgnoreCase("start")) {
                    if (PolygonGeofencingService.this.q.compareAndSet(false, true)) {
                        PolygonGeofencingService.e(PolygonGeofencingService.this.getApplicationContext());
                    }
                } else if (action.equalsIgnoreCase("stop")) {
                    if (PolygonGeofencingService.this.q.compareAndSet(true, false)) {
                        PolygonGeofencingService.f(PolygonGeofencingService.this.getApplicationContext());
                    }
                    PolygonGeofencingService.this.a(false);
                    return;
                }
            }
            if (LocationResult.hasResult(this.a)) {
                PolygonGeofencingService.this.c(this.a);
                TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(PolygonGeofencingService.this.getApplicationContext());
                TSConfig tSConfig = TSConfig.getInstance(PolygonGeofencingService.this.getApplicationContext());
                boolean z = LocationAuthorization.hasActivityPermission(PolygonGeofencingService.this.getApplicationContext()) && !tSConfig.getDisableMotionActivityUpdates().booleanValue();
                boolean zIsEmpty = StateChange.isEmpty();
                boolean zIsLoitering = LoiteringEvent.isLoitering();
                if ((!tSGeofenceManager.isMonitoringPolygons() || (z && !tSConfig.getIsMoving().booleanValue() && zIsEmpty && !zIsLoitering)) && PolygonGeofencingService.this.q.compareAndSet(true, false)) {
                    PolygonGeofencingService.f(PolygonGeofencingService.this.getApplicationContext());
                }
                if (!tSGeofenceManager.isMonitoringPolygons() && PolygonGeofencingService.this.q.compareAndSet(true, false)) {
                    PolygonGeofencingService.f(PolygonGeofencingService.this.getApplicationContext());
                }
                PolygonGeofencingService polygonGeofencingService = PolygonGeofencingService.this;
                polygonGeofencingService.a(polygonGeofencingService.q.get());
            } else if (LocationAvailability.hasLocationAvailability(this.a)) {
                PolygonGeofencingService.this.b(this.a);
            }
            PolygonGeofencingService.this.a(this.b);
        }
    }

    public void d(Context context) {
        TSLog.logger.debug(TSLog.calendar("Halting polygon monitoring after timeout"));
        f(context);
        stopSelf();
    }

    public static void e(Context context) {
        TSLog.logger.debug(TSLog.on("startUpdatingLocation"));
        try {
            LocationServices.getFusedLocationProviderClient(context).requestLocationUpdates(LocationRequest.create().setPriority(100).setInterval(0L).setFastestInterval(0L).setSmallestDisplacement(0.0f), getPendingIntent(context));
        } catch (SecurityException e) {
            TSLog.logger.error(TSLog.error("SecurityException while attempting to fetch location: " + e.getMessage()));
        }
    }

    public static void f(Context context) {
        TSLog.logger.debug(TSLog.off("stopUpdatingLocation"));
        LocationServices.getFusedLocationProviderClient(context).removeLocationUpdates(getPendingIntent(context));
    }

    public static PendingIntent getPendingIntent(Context context) {
        return getPendingIntent(context, null);
    }

    public static void handleGeofencingEvent(final Context context, String str, Location location, int i) {
        String str2;
        String str3;
        LoiteringEvent loiteringEventA;
        TSGeofence tSGeofenceFind = GeofenceDAO.getInstance(context).find(str);
        if (tSGeofenceFind == null) {
            TSLog.logger.error("Failed to find geofence record in database: " + str);
            return;
        }
        if (i == 1) {
            if (tSGeofenceFind.getNotifyOnDwell()) {
                StateChange.a(str, location, 1);
                LoiteringEvent.a(new LoiteringEvent(tSGeofenceFind, new LoiteringEvent.a() {
                    @Override
                    public final void a(TSGeofence tSGeofence) {
                        PolygonGeofencingService.a(context, tSGeofence);
                    }
                }));
            }
            str3 = "tslocationmanager_beep_trip_up_dry";
            str2 = "ENTER";
        } else if (i == 2) {
            if (tSGeofenceFind.getNotifyOnDwell() && (loiteringEventA = LoiteringEvent.a(str)) != null) {
                loiteringEventA.a();
                LoiteringEvent.b(str);
            }
            str3 = "tslocationmanager_beep_trip_dry";
            str2 = "EXIT";
        } else if (i == 4) {
            LoiteringEvent.b(str);
            StateChange.remove(str);
            str3 = "tslocationmanager_beep_trip_up_echo";
            str2 = "DWELL";
        } else {
            str2 = "UNKNOWN";
            str3 = "";
        }
        TSMediaPlayer.getInstance().debug(context, str3);
        TSLog.logger.info(TSLog.header("Geofencing Event: ".concat(str2)) + TSLog.boxRow(str) + TSLog.BOX_BOTTOM);
        if (location == null) {
            TSLog.logger.error(TSLog.warn("Failed to receive location during Polygon geofence event."));
            return;
        }
        TSLocation.applyExtras(context, location);
        TSConfig tSConfig = TSConfig.getInstance(context);
        TSGeofenceManager.getInstance(context).setLocation(location, tSConfig.getIsMoving().booleanValue());
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(context);
        Bundle extras = location.getExtras();
        extras.putBoolean("isMoving", tSConfig.getIsMoving().booleanValue());
        extras.putFloat(TSLocation.LOCATION_OPTIONS_ODOMETER, tSConfig.getOdometer().floatValue());
        EventBus.getDefault().post(new TSLocation(context, location, ActivityRecognitionService.getMostProbableActivity(), tSLocationManager.getCurrentLocationProvider()));
        GeofenceEvent geofenceEvent = new GeofenceEvent(i, tSGeofenceFind, new TSLocation(context, location, ActivityRecognitionService.getMostProbableActivity()));
        if (tSConfig.getMaxRecordsToPersist().intValue() != 0) {
            a(context, geofenceEvent.getLocation());
        }
        EventBus.getDefault().post(geofenceEvent);
    }

    public static void startMonitoring(Context context) {
        Intent intent = new Intent(context, (Class<?>) PolygonGeofencingService.class);
        intent.setAction("start");
        AbstractService.startForegroundService(context, intent);
    }

    public static void stop(Context context) {
        f(context);
        StateChange.a();
        stopService(context);
    }

    private static void stopService(Context context) {
        AbstractService.stop(context, PolygonGeofencingService.class);
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
        this.s = new StopTimeoutEvaluator(1200000, new StopTimeoutEvaluator.a() {
            @Override
            public final void a() {
                this.f$0.d(applicationContext);
            }
        });
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.s.a();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        boolean zA = a(intent, i2, false);
        if (!zA) {
            LoiteringEvent.d();
        }
        BackgroundGeolocation.getThreadPool().execute(new a(intent, i2));
        return zA ? 3 : 2;
    }

    public void c(Intent intent) {
        float f;
        LocationResult locationResultExtractResult = LocationResult.extractResult(intent);
        if (locationResultExtractResult == null) {
            TSLog.logger.warn(TSLog.warn("handleLocationResult received a null LocationResult"));
            return;
        }
        Location lastLocation = locationResultExtractResult.getLastLocation();
        this.r.incrementAndGet();
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (!LocationAuthorization.hasActivityPermission(getApplicationContext()) || tSConfig.getDisableMotionActivityUpdates().booleanValue()) {
            if (lastLocation.hasSpeed()) {
                if (this.s.a(lastLocation) >= 1.4d) {
                    this.s.a();
                } else if (!this.s.b()) {
                    this.s.d();
                }
            } else if (!this.s.b()) {
                this.s.d();
            }
        }
        TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(getApplicationContext());
        for (Location location : locationResultExtractResult.getLocations()) {
            TSLog.logger.debug(TSLog.header("isInPolygon: 📍  " + location.getLatitude() + ", " + location.getLongitude() + ", acy: " + location.getAccuracy() + "m, spd: " + (location.hasSpeed() ? Float.valueOf(location.getSpeed()) : "-1")));
            for (String str : tSGeofenceManager.getMonitoredPolygonIdentifiers()) {
                boolean polygonState = tSGeofenceManager.getPolygonState(str);
                float accuracy = location.getAccuracy();
                if (polygonState) {
                    accuracy += 2.0f;
                    if (accuracy > 50.0f) {
                        f = 50.0f;
                    } else {
                        f = accuracy;
                    }
                } else {
                    f = accuracy;
                }
                TSGeofence.LocationInPolygonResult locationInPolygonResultIsLocationInPolygon = TSGeofence.isLocationInPolygon(str, location.getLatitude(), location.getLongitude(), f);
                float f2 = locationInPolygonResultIsLocationInPolygon.confidence;
                boolean z = false;
                boolean z2 = f2 == 0.0f && !locationInPolygonResultIsLocationInPolygon.centerIsInPolygon;
                if (f2 >= 0.4f && locationInPolygonResultIsLocationInPolygon.centerIsInPolygon) {
                    z = true;
                }
                if (!(polygonState && z2) && (polygonState || !z)) {
                    StateChange.remove(str);
                } else {
                    StateChange stateChangeA = StateChange.a(str, location, 3);
                    stateChangeA.d();
                    if (stateChangeA.b()) {
                        StateChange.remove(str);
                        tSGeofenceManager.setPolygonState(str, !polygonState);
                        handleGeofencingEvent(getApplicationContext(), str, stateChangeA.location, polygonState ? 2 : 1);
                    }
                }
            }
        }
    }

    public static PendingIntent getPendingIntent(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) PolygonGeofencingService.class);
        if (str != null) {
            intent.setAction(str);
        }
        return Build.VERSION.SDK_INT >= 26 ? PendingIntent.getForegroundService(context, 0, intent, Util.getPendingIntentFlags(134217728)) : PendingIntent.getService(context, 0, intent, 134217728);
    }

    public static void a(final Context context, final TSGeofence tSGeofence) {
        LocationServices.getFusedLocationProviderClient(context).getLastLocation().addOnSuccessListener(new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                PolygonGeofencingService.b(context, tSGeofence, (Location) obj);
            }
        });
    }

    public static void b(final Context context, final TSGeofence tSGeofence, final Location location) {
        BackgroundGeolocation.getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                PolygonGeofencingService.a(context, tSGeofence, location);
            }
        });
    }

    public static class LoiteringEvent implements Runnable {
        private static final Handler c = new Handler(Looper.getMainLooper());
        private static final Map<String, LoiteringEvent> d = new HashMap();
        private final TSGeofence a;
        private final a b;

        interface a {
            void a(TSGeofence tSGeofence);
        }

        LoiteringEvent(TSGeofence tSGeofence, a aVar) {
            this.a = tSGeofence;
            this.b = aVar;
            c.postDelayed(this, tSGeofence.getLoiteringDelay());
        }

        static void a(LoiteringEvent loiteringEvent) {
            Map<String, LoiteringEvent> map = d;
            synchronized (map) {
                map.put(loiteringEvent.b().getIdentifier(), loiteringEvent);
            }
        }

        static LoiteringEvent b(String str) {
            LoiteringEvent loiteringEvent;
            Map<String, LoiteringEvent> map = d;
            synchronized (map) {
                loiteringEvent = map.get(str);
                map.remove(str);
            }
            return loiteringEvent;
        }

        public void c() {
            this.b.a(this.a);
        }

        static void d() {
            Map<String, LoiteringEvent> map = d;
            synchronized (map) {
                Iterator<Map.Entry<String, LoiteringEvent>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    it.next().getValue().a();
                    it.remove();
                }
            }
        }

        public static boolean isLoitering() {
            return !d.isEmpty();
        }

        @Override
        public void run() {
            BackgroundGeolocation.getThreadPool().execute(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.c();
                }
            });
            c.removeCallbacks(this);
        }

        static LoiteringEvent a(String str) {
            LoiteringEvent loiteringEvent;
            Map<String, LoiteringEvent> map = d;
            synchronized (map) {
                loiteringEvent = map.get(str);
            }
            return loiteringEvent;
        }

        TSGeofence b() {
            return this.a;
        }

        void a() {
            c.removeCallbacks(this);
        }
    }

    public void b(Intent intent) {
        TSLog.logger.info(TSLog.info("Location availability: " + LocationAvailability.extractLocationAvailability(intent).isLocationAvailable()));
    }

    public static void a(Context context, TSGeofence tSGeofence, Location location) {
        handleGeofencingEvent(context, tSGeofence.getIdentifier(), location, 4);
    }

    private static void a(Context context, TSLocation tSLocation) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        if (tSConfig.shouldPersist(tSLocation)) {
            if (EventBus.getDefault().hasSubscriberForEvent(PersistEvent.class)) {
                if (TSPlugin.getInstance().canUsePersistEvent(context)) {
                    EventBus.getDefault().post(new PersistEvent(context, tSLocation, tSConfig.getParams()));
                    return;
                } else {
                    TSLog.logger.warn(TSLog.warn("Failed to persist location"));
                    return;
                }
            }
            if (tSConfig.getMaxDaysToPersist().intValue() == 0 || !tSConfig.getPersist().booleanValue()) {
                return;
            }
            if (SQLiteLocationDAO.getInstance(context).persist(tSLocation)) {
                if (tSConfig.getAutoSync().booleanValue() && tSConfig.hasUrl()) {
                    HttpService.getInstance(context).flush(true);
                    return;
                }
                return;
            }
            TSLog.logger.error(TSLog.error("INSERT FAILURE" + tSLocation));
        }
    }

    public static class StateChange {
        private static final HashMap<String, StateChange> c = new HashMap<>();
        private int a;
        private int b;
        public final String identifier;
        public final Location location;

        StateChange(String str, Location location, int i) {
            this.identifier = str;
            this.location = location;
            this.b = i;
        }

        static StateChange a(String str, Location location, int i) {
            StateChange stateChange;
            HashMap<String, StateChange> map = c;
            synchronized (map) {
                stateChange = map.get(str);
            }
            if (stateChange != null) {
                return stateChange;
            }
            StateChange stateChange2 = new StateChange(str, location, i);
            synchronized (map) {
                map.put(str, stateChange2);
            }
            return stateChange2;
        }

        public static StateChange findByIdentifier(String str) {
            StateChange stateChange;
            HashMap<String, StateChange> map = c;
            synchronized (map) {
                stateChange = map.get(str);
            }
            return stateChange;
        }

        public static boolean isEmpty() {
            boolean zIsEmpty;
            HashMap<String, StateChange> map = c;
            synchronized (map) {
                zIsEmpty = map.isEmpty();
            }
            return zIsEmpty;
        }

        public static void remove(String str) {
            HashMap<String, StateChange> map = c;
            synchronized (map) {
                map.remove(str);
            }
        }

        boolean b() {
            return this.a >= this.b;
        }

        int c() {
            return this.a;
        }

        void d() {
            this.a++;
        }

        public String toString() {
            return "[StateChange identifier: " + this.identifier + ", score: " + this.a + "/" + this.b + ", location: " + this.location + "]";
        }

        static void a() {
            HashMap<String, StateChange> map = c;
            synchronized (map) {
                map.clear();
            }
        }
    }
}
