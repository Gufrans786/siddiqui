package com.transistorsoft.locationmanager.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.location.ActivityTransitionEvent;
import com.intentfilter.androidpermissions.PermissionManager;
import com.intentfilter.androidpermissions.models.DeniedPermissions;
import com.transistorsoft.locationmanager.activity.TSLocationManagerActivity;
import com.transistorsoft.locationmanager.adapter.callback.TSActivityChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSBackgroundTaskCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSBeforeInsertBlock;
import com.transistorsoft.locationmanager.adapter.callback.TSCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSConnectivityChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSEmailLogCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSEnabledChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGeofenceCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGeofenceExistsCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGeofencesChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetCountCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetGeofenceCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetGeofencesCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetLocationsCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetLogCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSHasGeofenceCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSHeartbeatCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSHttpResponseCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSInsertLocationCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSLocationCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSLocationProviderChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSNotificationActionCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSPlayServicesConnectErrorCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSPowerSaveChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSRequestPermissionCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSScheduleCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSSecurityExceptionCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSSyncCallback;
import com.transistorsoft.locationmanager.data.LocationModel;
import com.transistorsoft.locationmanager.data.SQLQuery;
import com.transistorsoft.locationmanager.data.sqlite.GeofenceDAO;
import com.transistorsoft.locationmanager.data.sqlite.SQLiteLocationDAO;
import com.transistorsoft.locationmanager.device.DeviceSettings;
import com.transistorsoft.locationmanager.device.DeviceSettingsRequest;
import com.transistorsoft.locationmanager.event.ActivityChangeEvent;
import com.transistorsoft.locationmanager.event.ConnectivityChangeEvent;
import com.transistorsoft.locationmanager.event.GeofenceEvent;
import com.transistorsoft.locationmanager.event.HeadlessEvent;
import com.transistorsoft.locationmanager.event.HeartbeatEvent;
import com.transistorsoft.locationmanager.event.LocationErrorEvent;
import com.transistorsoft.locationmanager.event.LocationProviderChangeEvent;
import com.transistorsoft.locationmanager.event.MotionChangeEvent;
import com.transistorsoft.locationmanager.event.PersistEvent;
import com.transistorsoft.locationmanager.event.PowerSaveModeChangeEvent;
import com.transistorsoft.locationmanager.event.SecurityExceptionEvent;
import com.transistorsoft.locationmanager.event.SettingsFailureEvent;
import com.transistorsoft.locationmanager.event.TemplateErrorEvent;
import com.transistorsoft.locationmanager.event.TerminateEvent;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import com.transistorsoft.locationmanager.geofence.TSGeofenceManager;
import com.transistorsoft.locationmanager.http.HttpResponse;
import com.transistorsoft.locationmanager.http.HttpService;
import com.transistorsoft.locationmanager.lifecycle.LifecycleManager;
import com.transistorsoft.locationmanager.location.TSCurrentPositionRequest;
import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.location.TSWatchPositionRequest;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.logger.TSLogReader;
import com.transistorsoft.locationmanager.logger.TSMediaPlayer;
import com.transistorsoft.locationmanager.plugin.TSPlugin;
import com.transistorsoft.locationmanager.provider.TSProviderManager;
import com.transistorsoft.locationmanager.scheduler.ScheduleEvent;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import com.transistorsoft.locationmanager.service.ActivityRecognitionService;
import com.transistorsoft.locationmanager.service.GeofencingService;
import com.transistorsoft.locationmanager.service.HeartbeatService;
import com.transistorsoft.locationmanager.service.TrackingService;
import com.transistorsoft.locationmanager.settings.Settings;
import com.transistorsoft.locationmanager.util.BackgroundTaskManager;
import com.transistorsoft.locationmanager.util.HeadlessEventBroadcaster;
import com.transistorsoft.locationmanager.util.LocationAuthorization;
import com.transistorsoft.locationmanager.util.Sensors;
import com.transistorsoft.locationmanager.util.TSNotification;
import com.transistorsoft.rnbackgroundgeolocation.RNBackgroundGeolocationModule;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONObject;

public class BackgroundGeolocation {
    public static final String ACTION_ADD_GEOFENCE = "addGeofence";
    public static final String ACTION_ADD_GEOFENCES = "addGeofences";
    public static final String ACTION_CHANGE_PACE = "changePace";
    public static final String ACTION_CLEAR_DATABASE = "clearDatabase";
    public static final String ACTION_DESTROY_LOCATION = "destroyLocation";
    public static final String ACTION_DESTROY_LOCATIONS = "destroyLocations";
    public static final String ACTION_DESTROY_LOG = "destroyLog";
    public static final String ACTION_FINISH = "finish";
    public static final String ACTION_GEOFENCE_EXISTS = "geofenceExists";
    public static final String ACTION_GET_COUNT = "getCount";
    public static final String ACTION_GET_CURRENT_POSITION = "getCurrentPosition";
    public static final String ACTION_GET_GEOFENCE = "getGeofence";
    public static final String ACTION_GET_GEOFENCES = "getGeofences";
    public static final String ACTION_GET_LOCATIONS = "getLocations";
    public static final String ACTION_GET_ODOMETER = "getOdometer";
    public static final String ACTION_GET_PROVIDER_STATE = "getProviderState";
    public static final String ACTION_GET_SENSORS = "getSensors";
    public static final String ACTION_GOOGLE_PLAY_SERVICES_CONNECT_ERROR = "googlePlayServiceConnectError";
    public static final String ACTION_HEARTBEAT = "heartbeat";
    public static final String ACTION_HTTP_RESPONSE = "http";
    public static final String ACTION_INSERT_LOCATION = "insertLocation";
    public static final String ACTION_IS_IGNORING_BATTERY_OPTIMIZATIONS = "isIgnoringBatteryOptimizations";
    public static final String ACTION_IS_POWER_SAVE_MODE = "isPowerSaveMode";
    public static final String ACTION_LOCATION_ERROR = "locationError";
    public static final String ACTION_ON_GEOFENCE = "onGeofence";
    public static final String ACTION_ON_MOTION_CHANGE = "onMotionChange";
    public static final String ACTION_PLAY_SOUND = "playSound";
    public static final String ACTION_REMOVE_GEOFENCE = "removeGeofence";
    public static final String ACTION_REMOVE_GEOFENCES = "removeGeofences";
    public static final String ACTION_REMOVE_LISTENER = "removeListener";
    public static final String ACTION_REQUEST_PERMISSION = "requestPermission";
    public static final String ACTION_RESET_ODOMETER = "resetOdometer";
    public static final String ACTION_SCHEDULE = "schedule";
    public static final String ACTION_SET_CONFIG = "setConfig";
    public static final String ACTION_SET_NOTIFICATION = "setNotification";
    public static final String ACTION_SET_ODOMETER = "setOdometer";
    public static final String ACTION_SHOW_SETTINGS = "showSettings";
    public static final String ACTION_START = "start";
    public static final String ACTION_START_BACKGROUND_TASK = "startBackgroundTask";
    public static final String ACTION_START_GEOFENCES = "startGeofences";
    public static final String ACTION_START_ON_BOOT = "startOnBoot";
    public static final String ACTION_START_SCHEDULE = "startSchedule";
    public static final String ACTION_STOP = "stop";
    public static final String ACTION_STOP_BACKGROUND_TASK = "stopBackgroundTask";
    public static final String ACTION_STOP_SCHEDULE = "stopSchedule";
    public static final String ACTION_STOP_WATCH_POSITION = "stopWatchPosition";
    public static final String ACTION_SYNC = "sync";
    public static final String ACTION_WATCH_POSITION = "watchPosition";
    public static final String EVENT_ACTIVITYCHANGE = "activitychange";
    public static final String EVENT_AUTHORIZATION = "authorization";
    public static final String EVENT_BOOT = "boot";
    public static final String EVENT_CONNECTIVITYCHANGE = "connectivitychange";
    public static final String EVENT_ENABLEDCHANGE = "enabledchange";
    public static final String EVENT_ERROR = "error";
    public static final String EVENT_GEOFENCE = "geofence";
    public static final String EVENT_GEOFENCESCHANGE = "geofenceschange";
    public static final String EVENT_GEOFENCES_CHANGE = "geofenceschange";
    public static final String EVENT_HEARTBEAT = "heartbeat";
    public static final String EVENT_HTTP = "http";
    public static final String EVENT_LOCATION = "location";
    public static final String EVENT_MOTIONCHANGE = "motionchange";
    public static final String EVENT_NOTIFICATIONACTION = "notificationaction";
    public static final String EVENT_PLAY_SERVICES_CONNECT_ERROR = "playservicesconnecterror";
    public static final String EVENT_POWERSAVECHANGE = "powersavechange";
    public static final String EVENT_PROVIDERCHANGE = "providerchange";
    public static final String EVENT_SCHEDULE = "schedule";
    public static final String EVENT_SECURITY_EXCEPTION = "securityexception";
    public static final String EVENT_TERMINATE = "terminate";
    public static final int FORCE_RELOAD_BOOT = 6;
    public static final int FORCE_RELOAD_GEOFENCE = 3;
    public static final int FORCE_RELOAD_HEARTBEAT = 4;
    public static final int FORCE_RELOAD_LOCATION_CHANGE = 1;
    public static final int FORCE_RELOAD_MOTION_CHANGE = 2;
    public static final int FORCE_RELOAD_SCHEDULE = 5;
    public static final String TAG = "TSLocationManager";
    private static final String a = "mainActivityInactive";
    private static BackgroundGeolocation b;
    private static final ExecutorService c = Executors.newCachedThreadPool();
    private static Handler d;
    private LocationProviderChangeEvent f;
    private final Context g;
    private Activity h;
    private Z l;
    private final int e = 0;
    private final AtomicBoolean i = new AtomicBoolean(false);
    private final AtomicBoolean j = new AtomicBoolean(false);
    private final AtomicBoolean k = new AtomicBoolean(false);
    private final List<TSLocationCallback> m = new ArrayList();

    private final List<TSLocationCallback> f3733n = new ArrayList();
    private final List<TSGeofenceCallback> o = new ArrayList();
    private final List<TSEnabledChangeCallback> p = new ArrayList();
    private final List<TSConnectivityChangeCallback> q = new ArrayList();
    private final List<TSHttpResponseCallback> r = new ArrayList();
    private final List<TSHeartbeatCallback> s = new ArrayList();
    private final List<TSActivityChangeCallback> t = new ArrayList();
    private final List<TSPowerSaveChangeCallback> u = new ArrayList();
    private final List<TSLocationProviderChangeCallback> v = new ArrayList();
    private final List<TSScheduleCallback> w = new ArrayList();
    private final List<TSPlayServicesConnectErrorCallback> x = new ArrayList();
    private final List<TSSecurityExceptionCallback> y = new ArrayList();
    private final List<TSNotificationActionCallback> z = new ArrayList();
    private final List<GeofenceEvent> A = new ArrayList();
    private final List<TSCurrentPositionRequest> B = new ArrayList();

    class A implements PermissionManager.PermissionRequestListener {
        final TSRequestPermissionCallback a;

        A(TSRequestPermissionCallback tSRequestPermissionCallback) {
            this.a = tSRequestPermissionCallback;
        }

        @Override
        public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            this.a.onFailure(TSProviderManager.ACCURACY_AUTHORIZATION_REDUCED);
        }

        @Override
        public void onPermissionGranted() {
            TrackingService.changePace(BackgroundGeolocation.this.g, TSConfig.getInstance(BackgroundGeolocation.this.g).getIsMoving().booleanValue(), null);
            BackgroundGeolocation backgroundGeolocation = BackgroundGeolocation.this;
            backgroundGeolocation.a(new LocationProviderChangeEvent(backgroundGeolocation.g));
            this.a.onSuccess(TSProviderManager.ACCURACY_AUTHORIZATION_FULL);
        }
    }

    class B implements Runnable {
        final int a;

        B(int i) {
            this.a = i;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.x) {
                Iterator it = BackgroundGeolocation.this.x.iterator();
                while (it.hasNext()) {
                    ((TSPlayServicesConnectErrorCallback) it.next()).onPlayServicesConnectError(this.a);
                }
            }
        }
    }

    class C implements Runnable {
        final ScheduleEvent a;

        C(ScheduleEvent scheduleEvent) {
            this.a = scheduleEvent;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.w) {
                Iterator it = BackgroundGeolocation.this.w.iterator();
                while (it.hasNext()) {
                    ((TSScheduleCallback) it.next()).onSchedule(this.a);
                }
            }
        }
    }

    public class ChangePaceTask implements Runnable {
        private final Boolean a;
        private final TSCallback b;

        class a implements TSLocationCallback {

            class RunnableC0074a implements Runnable {
                RunnableC0074a() {
                }

                @Override
                public void run() {
                    ChangePaceTask.this.b.onSuccess();
                }
            }

            class b implements Runnable {
                final Integer a;

                b(Integer num) {
                    this.a = num;
                }

                @Override
                public void run() {
                    ChangePaceTask.this.b.onFailure(this.a.toString());
                }
            }

            a() {
            }

            @Override
            public void onError(Integer num) {
                BackgroundGeolocation.getUiHandler().post(new b(num));
            }

            @Override
            public void onLocation(TSLocation tSLocation) {
                BackgroundGeolocation.getUiHandler().post(new RunnableC0074a());
            }
        }

        ChangePaceTask(boolean z, TSCallback tSCallback) {
            this.a = Boolean.valueOf(z);
            this.b = tSCallback;
        }

        public TSCallback getCallback() {
            return this.b;
        }

        public Boolean getIsMoving() {
            return this.a;
        }

        @Override
        public void run() {
            a aVar = new a();
            if (TSConfig.getInstance(BackgroundGeolocation.this.g).isLocationTrackingMode()) {
                TrackingService.changePace(BackgroundGeolocation.this.g, this.a.booleanValue(), aVar);
            } else {
                GeofencingService.changePace(BackgroundGeolocation.this.g, this.a.booleanValue(), aVar);
            }
        }
    }

    class D implements Runnable {
        final ActivityTransitionEvent a;

        D(ActivityTransitionEvent activityTransitionEvent) {
            this.a = activityTransitionEvent;
        }

        @Override
        public void run() {
            ActivityChangeEvent activityChangeEvent = new ActivityChangeEvent(this.a);
            synchronized (BackgroundGeolocation.this.t) {
                Iterator it = BackgroundGeolocation.this.t.iterator();
                while (it.hasNext()) {
                    ((TSActivityChangeCallback) it.next()).onActivityChange(activityChangeEvent);
                }
            }
        }
    }

    class E implements Runnable {
        final TSLocation a;

        E(TSLocation tSLocation) {
            this.a = tSLocation;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.m) {
                Iterator it = BackgroundGeolocation.this.m.iterator();
                while (it.hasNext()) {
                    ((TSLocationCallback) it.next()).onLocation(this.a);
                }
            }
        }
    }

    class F implements Runnable {
        final int a;

        F(int i) {
            this.a = i;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.m) {
                Iterator it = BackgroundGeolocation.this.m.iterator();
                while (it.hasNext()) {
                    ((TSLocationCallback) it.next()).onError(Integer.valueOf(this.a));
                }
            }
        }
    }

    class G implements TSConfig.OnChangeCallback {
        G() {
        }

        @Override
        public void onChange(TSConfig tSConfig) {
            TSLocation.resetLocationTemplate();
        }
    }

    class H implements Runnable {
        final String a;

        H(String str) {
            this.a = str;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.z) {
                Iterator it = BackgroundGeolocation.this.z.iterator();
                while (it.hasNext()) {
                    ((TSNotificationActionCallback) it.next()).onClick(this.a);
                }
            }
        }
    }

    class I implements Runnable {
        final LocationProviderChangeEvent a;

        I(LocationProviderChangeEvent locationProviderChangeEvent) {
            this.a = locationProviderChangeEvent;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.v) {
                Iterator it = BackgroundGeolocation.this.v.iterator();
                while (it.hasNext()) {
                    ((TSLocationProviderChangeCallback) it.next()).onLocationProviderChange(this.a);
                }
            }
        }
    }

    class J implements Runnable {
        final HeartbeatEvent a;

        J(HeartbeatEvent heartbeatEvent) {
            this.a = heartbeatEvent;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.s) {
                Iterator it = BackgroundGeolocation.this.s.iterator();
                while (it.hasNext()) {
                    ((TSHeartbeatCallback) it.next()).onHeartbeat(this.a);
                }
            }
        }
    }

    class K implements Runnable {
        final GeofenceEvent a;

        K(GeofenceEvent geofenceEvent) {
            this.a = geofenceEvent;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.o) {
                Iterator it = BackgroundGeolocation.this.o.iterator();
                while (it.hasNext()) {
                    ((TSGeofenceCallback) it.next()).onGeofence(this.a);
                }
            }
        }
    }

    class L implements Runnable {
        final MotionChangeEvent a;

        L(MotionChangeEvent motionChangeEvent) {
            this.a = motionChangeEvent;
        }

        @Override
        public void run() {
            synchronized (BackgroundGeolocation.this.f3733n) {
                Iterator it = BackgroundGeolocation.this.f3733n.iterator();
                while (it.hasNext()) {
                    ((TSLocationCallback) it.next()).onLocation(this.a.getLocation());
                }
            }
        }
    }

    class M implements TSConfig.OnChangeCallback {
        M() {
        }

        @Override
        public void onChange(TSConfig tSConfig) {
            if (!tSConfig.getEnabled().booleanValue() || tSConfig.getIsMoving().booleanValue()) {
                return;
            }
            HeartbeatService.start(BackgroundGeolocation.this.g);
        }
    }

    class N implements TSConfig.OnChangeCallback {
        N() {
        }

        @Override
        public void onChange(TSConfig tSConfig) {
            if (tSConfig.getEnabled().booleanValue()) {
                ActivityRecognitionService.start(BackgroundGeolocation.this.g);
            }
        }
    }

    class O implements TSConfig.OnChangeCallback {

        class a implements PermissionManager.PermissionRequestListener {
            a() {
            }

            @Override
            public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            }

            @Override
            public void onPermissionGranted() {
            }
        }

        O() {
        }

        @Override
        public void onChange(TSConfig tSConfig) {
            if (tSConfig.getEnabled().booleanValue() && BackgroundGeolocation.this.i.get()) {
                LocationAuthorization.withBackgroundPermission(BackgroundGeolocation.this.g, new a());
            }
        }
    }

    class P implements TSConfig.OnChangeCallback {

        class a implements PermissionManager.PermissionRequestListener {
            a() {
            }

            @Override
            public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            }

            @Override
            public void onPermissionGranted() {
            }
        }

        P() {
        }

        @Override
        public void onChange(TSConfig tSConfig) {
            if (!tSConfig.getEnabled().booleanValue() || !BackgroundGeolocation.this.i.get() || tSConfig.getDisableMotionActivityUpdates().booleanValue() || LocationAuthorization.hasActivityPermission(BackgroundGeolocation.this.g)) {
                return;
            }
            LocationAuthorization.requestActivityPermission(BackgroundGeolocation.this.g, new a());
        }
    }

    class Q implements Runnable {
        final TSConfig a;

        Q(TSConfig tSConfig) {
            this.a = tSConfig;
        }

        @Override
        public void run() {
            SQLiteLocationDAO sQLiteLocationDAOC = BackgroundGeolocation.c(BackgroundGeolocation.this.g);
            sQLiteLocationDAOC.unlock();
            sQLiteLocationDAOC.prune(this.a.getMaxDaysToPersist().intValue());
            BackgroundGeolocation.this.b();
        }
    }

    class R implements Runnable {
        final TSCallback a;

        R(TSCallback tSCallback) {
            this.a = tSCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.this.ready(this.a);
        }
    }

    private class S implements Runnable {
        TSCallback a;

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                S.this.a.onSuccess();
            }
        }

        S(TSCallback tSCallback) {
            this.a = tSCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.c(BackgroundGeolocation.this.g).clear();
            BackgroundGeolocation.getUiHandler().post(new a());
        }
    }

    private class T implements Runnable {
        private TSGetCountCallback a;

        class a implements Runnable {
            final int a;

            a(int i) {
                this.a = i;
            }

            @Override
            public void run() {
                T.this.a.onSuccess(Integer.valueOf(this.a));
            }
        }

        public T(TSGetCountCallback tSGetCountCallback) {
            this.a = tSGetCountCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.getUiHandler().post(new a(BackgroundGeolocation.c(BackgroundGeolocation.this.g).count()));
        }
    }

    private class U implements Runnable {
        private final TSGetGeofencesCallback a;

        class a implements Runnable {
            final List a;

            a(List list) {
                this.a = list;
            }

            @Override
            public void run() {
                U.this.a.onSuccess(this.a);
            }
        }

        public U(TSGetGeofencesCallback tSGetGeofencesCallback) {
            this.a = tSGetGeofencesCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.getUiHandler().post(new a(GeofenceDAO.getInstance(BackgroundGeolocation.this.g).all()));
        }
    }

    private class V implements Runnable {
        private final TSGetLocationsCallback a;

        class a implements Runnable {
            final List a;

            a(List list) {
                this.a = list;
            }

            @Override
            public void run() {
                V.this.a.onSuccess(this.a);
            }
        }

        V(TSGetLocationsCallback tSGetLocationsCallback) {
            this.a = tSGetLocationsCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.getUiHandler().post(new a(BackgroundGeolocation.c(BackgroundGeolocation.this.g).all()));
        }
    }

    private class W implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();

        W() {
        }

        @Override
        public void uncaughtException(Thread thread, Throwable th) {
            TSConfig tSConfig = TSConfig.getInstance(BackgroundGeolocation.this.g);
            if (tSConfig.getIsMoving().booleanValue()) {
                TSLocationManager.getInstance(BackgroundGeolocation.this.g).stopUpdatingLocation();
            }
            TSLog.logger.error(TSLog.error(("Uncaught Exception: " + th.getMessage()) + "\n" + tSConfig.toJson().toString() + "\n"), th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            } else {
                System.exit(2);
            }
        }
    }

    private class X implements Runnable {
        private final JSONObject a;
        private final TSInsertLocationCallback b;
        private String c;

        class a implements Runnable {
            final String a;

            a(String str) {
                this.a = str;
            }

            @Override
            public void run() {
                X.this.b.onSuccess(this.a);
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override
            public void run() {
                X.this.b.onFailure("Insert location failed");
            }
        }

        public X(JSONObject jSONObject, TSInsertLocationCallback tSInsertLocationCallback) {
            this.a = jSONObject;
            this.b = tSInsertLocationCallback;
        }

        @Override
        public void run() {
            String strPersist = SQLiteLocationDAO.getInstance(BackgroundGeolocation.this.g).persist(this.a);
            if (strPersist == null) {
                BackgroundGeolocation.getUiHandler().post(new b());
                return;
            }
            BackgroundGeolocation.getUiHandler().post(new a(strPersist));
            TSConfig tSConfig = TSConfig.getInstance(BackgroundGeolocation.this.g);
            HttpService httpService = HttpService.getInstance(BackgroundGeolocation.this.g);
            if (tSConfig.hasUrl() && tSConfig.getAutoSync().booleanValue() && httpService.isNetworkAvailable()) {
                Integer autoSyncThreshold = tSConfig.getAutoSyncThreshold();
                if (autoSyncThreshold.intValue() <= 0 || SQLiteLocationDAO.getInstance(BackgroundGeolocation.this.g).count() >= autoSyncThreshold.intValue()) {
                    httpService.e();
                }
            }
        }
    }

    private class Y implements Runnable {
        private final Object a;

        Y(Object obj) {
            this.a = obj;
        }

        @Override
        public void run() {
            if (!BackgroundGeolocation.c(BackgroundGeolocation.this.g).persist((TSLocation) this.a)) {
                Log.w("TSLocationManager", "INSERT FAILURE" + this.a);
            } else if (TSConfig.getInstance(BackgroundGeolocation.this.g).getAutoSync().booleanValue()) {
                BackgroundGeolocation.this.sync();
            }
        }
    }

    private class Z implements Runnable {
        private final String a;
        private final TSCallback b;

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                Z.this.b.onFailure("LICENSE_VALIDATION_FAILURE");
            }
        }

        class b implements TSLocationCallback {
            b() {
            }

            @Override
            public void onError(Integer num) {
                BackgroundGeolocation.this.l = null;
            }

            @Override
            public void onLocation(TSLocation tSLocation) {
                BackgroundGeolocation.this.l = null;
            }
        }

        class c implements Runnable {
            final String a;

            c(String str) {
                this.a = str;
            }

            @Override
            public void run() {
                Z.this.b.onFailure(this.a);
            }
        }

        class d implements Runnable {
            d() {
            }

            @Override
            public void run() {
                Z.this.b.onSuccess();
            }
        }

        Z(String str, TSCallback tSCallback) {
            this.a = str;
            this.b = tSCallback;
        }

        private void b() {
            BackgroundGeolocation.getUiHandler().post(new d());
        }

        @Override
        public void run() {
            TSConfig tSConfig = TSConfig.getInstance(BackgroundGeolocation.this.g);
            if (!Settings.isValid(BackgroundGeolocation.this.g)) {
                BackgroundGeolocation.getUiHandler().post(new a());
                return;
            }
            boolean zEqualsIgnoreCase = this.a.equalsIgnoreCase("start");
            boolean z = zEqualsIgnoreCase != tSConfig.getTrackingMode().intValue();
            tSConfig.setTrackingMode(Integer.valueOf(zEqualsIgnoreCase ? 1 : 0));
            Boolean enabled = tSConfig.getEnabled();
            Log.i("TSLocationManager", "- Enable: " + enabled + " → true, trackingMode: " + tSConfig.getTrackingMode());
            b bVar = new b();
            if (z && enabled.booleanValue()) {
                TrackingService.changeTrackingMode(BackgroundGeolocation.this.g, zEqualsIgnoreCase ? 1 : 0, bVar);
            } else {
                TrackingService.start(BackgroundGeolocation.this.g, bVar);
            }
            b();
        }

        public TSCallback a() {
            return this.b;
        }

        private void a(String str) {
            BackgroundGeolocation.getUiHandler().post(new c(str));
        }
    }

    class C0876a implements TSConfig.OnChangeCallback {

        class RunnableC0075a implements Runnable {
            RunnableC0075a() {
            }

            @Override
            public void run() {
                Boolean enabled = TSConfig.getInstance(BackgroundGeolocation.this.g).getEnabled();
                if (LifecycleManager.getInstance().isHeadless()) {
                    HeadlessEventBroadcaster.post(new HeadlessEvent(BackgroundGeolocation.this.g, BackgroundGeolocation.EVENT_ENABLEDCHANGE, enabled));
                }
                synchronized (BackgroundGeolocation.this.p) {
                    Iterator it = BackgroundGeolocation.this.p.iterator();
                    while (it.hasNext()) {
                        ((TSEnabledChangeCallback) it.next()).onEnabledChange(enabled.booleanValue());
                    }
                }
            }
        }

        C0876a() {
        }

        @Override
        public void onChange(TSConfig tSConfig) {
            BackgroundGeolocation.getUiHandler().post(new RunnableC0075a());
        }
    }

    class C0877b implements TSCallback {
        final Runnable a;

        C0877b(Runnable runnable) {
            this.a = runnable;
        }

        @Override
        public void onFailure(String str) {
            TSLog.logger.warn(TSLog.warn(str));
            BackgroundGeolocation.getUiHandler().post(this.a);
        }

        @Override
        public void onSuccess() {
            BackgroundGeolocation.getUiHandler().post(this.a);
        }
    }

    class C0878c implements PermissionManager.PermissionRequestListener {
        final TSCallback a;

        C0878c(TSCallback tSCallback) {
            this.a = tSCallback;
        }

        @Override
        public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            if (!LocationAuthorization.hasPermission(BackgroundGeolocation.this.g)) {
                this.a.onFailure(LocationAuthorization.LOCATION_PERMISSION_DENIED);
                BackgroundGeolocation.this.j.set(false);
                return;
            }
            TSConfig tSConfig = TSConfig.getInstance(BackgroundGeolocation.this.g);
            if (BackgroundGeolocation.this.j.get() && tSConfig.getEnabled().booleanValue() && tSConfig.isLocationTrackingMode()) {
                TSLog.logger.warn(TSLog.warn("Already started.  Ignored"));
                this.a.onSuccess();
            } else {
                BackgroundGeolocation backgroundGeolocation = BackgroundGeolocation.this;
                backgroundGeolocation.l = backgroundGeolocation.new Z("start", this.a);
                BackgroundGeolocation.getThreadPool().execute(BackgroundGeolocation.this.l);
            }
        }

        @Override
        public void onPermissionGranted() {
            TSConfig tSConfig = TSConfig.getInstance(BackgroundGeolocation.this.g);
            if (BackgroundGeolocation.this.j.get() && tSConfig.getEnabled().booleanValue() && tSConfig.isLocationTrackingMode()) {
                TSLog.logger.warn(TSLog.warn("Already started.  Ignored"));
                this.a.onSuccess();
            } else {
                BackgroundGeolocation backgroundGeolocation = BackgroundGeolocation.this;
                backgroundGeolocation.l = backgroundGeolocation.new Z("start", this.a);
                BackgroundGeolocation.getThreadPool().execute(BackgroundGeolocation.this.l);
            }
        }
    }

    class C0879d implements TSCallback {
        C0879d() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0880e implements TSCallback {
        C0880e() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0881f implements PermissionManager.PermissionRequestListener {
        final TSCallback a;

        C0881f(TSCallback tSCallback) {
            this.a = tSCallback;
        }

        @Override
        public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            this.a.onFailure(LocationAuthorization.LOCATION_PERMISSION_DENIED);
        }

        @Override
        public void onPermissionGranted() {
            TSConfig tSConfig = TSConfig.getInstance(BackgroundGeolocation.this.g);
            if (BackgroundGeolocation.this.j.get() && tSConfig.getEnabled().booleanValue() && !tSConfig.isLocationTrackingMode()) {
                TSLog.logger.warn(TSLog.warn("Already started geofences.  Ignored"));
                this.a.onSuccess();
            } else {
                BackgroundGeolocation backgroundGeolocation = BackgroundGeolocation.this;
                backgroundGeolocation.l = backgroundGeolocation.new Z(BackgroundGeolocation.ACTION_START_GEOFENCES, this.a);
                BackgroundGeolocation.getThreadPool().execute(BackgroundGeolocation.this.l);
            }
        }
    }

    class C0882g implements TSCallback {
        C0882g() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0883h implements TSCallback {
        C0883h() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class RunnableC0884i implements Runnable {
        final TSCurrentPositionRequest a;

        RunnableC0884i(TSCurrentPositionRequest tSCurrentPositionRequest) {
            this.a = tSCurrentPositionRequest;
        }

        @Override
        public void run() {
            TSLocationManager.getInstance(BackgroundGeolocation.this.g).getCurrentPosition(this.a);
        }
    }

    class RunnableC0885j implements Runnable {
        final TSWatchPositionRequest a;

        RunnableC0885j(TSWatchPositionRequest tSWatchPositionRequest) {
            this.a = tSWatchPositionRequest;
        }

        @Override
        public void run() {
            TSLocationManager.getInstance(BackgroundGeolocation.this.g).watchPosition(this.a);
        }
    }

    class RunnableC0886k implements Runnable {
        RunnableC0886k() {
        }

        @Override
        public void run() {
            TSLocationManager.getInstance(BackgroundGeolocation.this.g).stopWatchPosition();
        }
    }

    class C0887l implements TSCallback {
        C0887l() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0888m implements TSCallback {
        C0888m() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class RunnableC0889n implements Runnable {
        final String a;
        final TSGetGeofenceCallback b;

        class a implements Runnable {
            final TSGeofence a;

            a(TSGeofence tSGeofence) {
                this.a = tSGeofence;
            }

            @Override
            public void run() {
                TSGeofence tSGeofence = this.a;
                if (tSGeofence != null) {
                    RunnableC0889n.this.b.onSuccess(tSGeofence);
                } else {
                    RunnableC0889n.this.b.onFailure("404");
                }
            }
        }

        RunnableC0889n(String str, TSGetGeofenceCallback tSGetGeofenceCallback) {
            this.a = str;
            this.b = tSGetGeofenceCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.getUiHandler().post(new a(GeofenceDAO.getInstance(BackgroundGeolocation.this.g).find(this.a)));
        }
    }

    class RunnableC0890o implements Runnable {
        final String a;
        final TSHasGeofenceCallback b;

        class a implements Runnable {
            final boolean a;

            a(boolean z) {
                this.a = z;
            }

            @Override
            public void run() {
                RunnableC0890o.this.b.onComplete(this.a);
            }
        }

        RunnableC0890o(String str, TSHasGeofenceCallback tSHasGeofenceCallback) {
            this.a = str;
            this.b = tSHasGeofenceCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.getUiHandler().post(new a(GeofenceDAO.getInstance(BackgroundGeolocation.this.g).exists(this.a)));
        }
    }

    class C0891p implements TSCallback {
        C0891p() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0892q implements TSCallback {
        C0892q() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0893r implements TSCallback {
        C0893r() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class RunnableC0894s implements Runnable {
        final TSLocationManager a;
        final Float b;
        final TSLocationCallback c;

        RunnableC0894s(TSLocationManager tSLocationManager, Float f, TSLocationCallback tSLocationCallback) {
            this.a = tSLocationManager;
            this.b = f;
            this.c = tSLocationCallback;
        }

        @Override
        public void run() {
            this.a.setOdometer(this.b, this.c);
        }
    }

    class C0895t implements TSCallback {
        C0895t() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0896u implements TSCallback {
        C0896u() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class C0897v implements TSConfig.OnChangeCallback {
        C0897v() {
        }

        @Override
        public void onChange(TSConfig tSConfig) {
            TSLocation.resetGeofenceTemplate();
        }
    }

    class C0898w implements TSCallback {
        C0898w() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class RunnableC0899x implements Runnable {
        final String a;
        final TSCallback b;

        class a implements Runnable {
            final boolean a;

            a(boolean z) {
                this.a = z;
            }

            @Override
            public void run() {
                if (this.a) {
                    RunnableC0899x.this.b.onSuccess();
                } else {
                    RunnableC0899x.this.b.onFailure("");
                }
            }
        }

        RunnableC0899x(String str, TSCallback tSCallback) {
            this.a = str;
            this.b = tSCallback;
        }

        @Override
        public void run() {
            BackgroundGeolocation.getUiHandler().post(new a(BackgroundGeolocation.c(BackgroundGeolocation.this.g).destroy(this.a)));
        }
    }

    class C0900y implements PermissionManager.PermissionRequestListener {
        final TSRequestPermissionCallback a;

        C0900y(TSRequestPermissionCallback tSRequestPermissionCallback) {
            this.a = tSRequestPermissionCallback;
        }

        @Override
        public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            this.a.onFailure(TSProviderManager.PERMISSION_DENIED);
        }

        @Override
        public void onPermissionGranted() {
            this.a.onSuccess(LocationAuthorization.hasBackgroundPermission(BackgroundGeolocation.this.g) ? TSProviderManager.PERMISSION_ALWAYS : TSProviderManager.PERMISSION_WHEN_IN_USE);
            TSLocationManagerActivity.start(BackgroundGeolocation.this.g, TSLocationManagerActivity.ACTION_LOCATION_SETTINGS);
        }
    }

    class C0901z implements PermissionManager.PermissionRequestListener {
        final TSRequestPermissionCallback a;

        C0901z(TSRequestPermissionCallback tSRequestPermissionCallback) {
            this.a = tSRequestPermissionCallback;
        }

        @Override
        public void onPermissionDenied(DeniedPermissions deniedPermissions) {
            this.a.onFailure(TSProviderManager.PERMISSION_DENIED);
        }

        @Override
        public void onPermissionGranted() {
            this.a.onSuccess(LocationAuthorization.hasBackgroundPermission(BackgroundGeolocation.this.g) ? TSProviderManager.PERMISSION_ALWAYS : TSProviderManager.PERMISSION_WHEN_IN_USE);
            TSLocationManagerActivity.start(BackgroundGeolocation.this.g, TSLocationManagerActivity.ACTION_LOCATION_SETTINGS);
        }
    }

    public BackgroundGeolocation(Context context) {
        this.g = context.getApplicationContext();
        EventBus eventBus = EventBus.getDefault();
        if (!eventBus.isRegistered(this)) {
            eventBus.register(this);
        }
        Thread.setDefaultUncaughtExceptionHandler(new W());
        if (isOnMainThread()) {
            LifecycleManager.getInstance().run();
        } else {
            getUiHandler().post(LifecycleManager.getInstance());
        }
        TSLog.logger.info(TSLog.ok("Google Play Services: connected (version code:" + GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE + ")"));
    }

    private void c() {
    }

    public static long deltaT(String str) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(Long.parseLong(str) * 1000);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        return TimeUnit.MILLISECONDS.toDays(calendar2.getTimeInMillis() - timeInMillis);
    }

    public static String getBroadcastAction(String str) {
        return "com.transistorsoft.locationmanager.event." + str.toUpperCase();
    }

    public static BackgroundGeolocation getInstance(Context context, Intent intent) {
        return getInstance(context);
    }

    public static ExecutorService getThreadPool() {
        return c;
    }

    public static Handler getUiHandler() {
        if (d == null) {
            d = new Handler(Looper.getMainLooper());
        }
        return d;
    }

    public static boolean isOnMainThread() {
        return Thread.currentThread().equals(Looper.getMainLooper().getThread());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onActivityTransitionEvent(ActivityTransitionEvent activityTransitionEvent) {
        if (LifecycleManager.getInstance().isHeadless()) {
            HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, EVENT_ACTIVITYCHANGE, new ActivityChangeEvent(activityTransitionEvent)));
        }
        a(activityTransitionEvent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onGeofenceEvent(GeofenceEvent geofenceEvent) {
        TSConfig.getInstance(this.g);
        if (Settings.isValid(this.g)) {
            synchronized (this.A) {
                this.A.clear();
            }
            this.A.add(geofenceEvent);
            if (LifecycleManager.getInstance().isHeadless()) {
                HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, "geofence", geofenceEvent));
            }
            a(geofenceEvent);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onHeartbeat(HeartbeatEvent heartbeatEvent) {
        a(heartbeatEvent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onHttpResponse(HttpResponse httpResponse) {
        if (LifecycleManager.getInstance().isHeadless()) {
            HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, "http", httpResponse));
        }
        synchronized (this.r) {
            Iterator<TSHttpResponseCallback> it = this.r.iterator();
            while (it.hasNext()) {
                it.next().onHttpResponse(httpResponse);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onLocationChange(TSLocation tSLocation) {
        if (LifecycleManager.getInstance().isHeadless()) {
            HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, "location", tSLocation));
        }
        a(tSLocation);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onLocationError(LocationErrorEvent locationErrorEvent) {
        TSLog.logger.warn(TSLog.warn("Location error: " + locationErrorEvent.errorCode));
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        TSMediaPlayer.getInstance().debug(this.g, "tslocationmanager_digi_warn");
        if (locationErrorEvent.errorCode == 1 && tSConfig.getDebug().booleanValue()) {
            getUiHandler().post(new TSNotification(this.g, "Location services disabled", locationErrorEvent.message));
        }
        b(locationErrorEvent.errorCode);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onLocationProviderChange(LocationProviderChangeEvent locationProviderChangeEvent) {
        this.f = locationProviderChangeEvent;
        if (LifecycleManager.getInstance().isHeadless()) {
            HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, EVENT_PROVIDERCHANGE, locationProviderChangeEvent));
        }
        a(locationProviderChangeEvent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onMotionChange(MotionChangeEvent motionChangeEvent) {
        if (LifecycleManager.getInstance().isHeadless()) {
            TSConfig.getInstance(this.g);
            HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, EVENT_MOTIONCHANGE, motionChangeEvent));
        }
        a(motionChangeEvent);
    }

    @Subscribe
    public void _onScheduleEvent(ScheduleEvent scheduleEvent) {
        if (!TSConfig.getInstance(this.g).getSchedulerEnabled().booleanValue()) {
            TSLog.logger.warn(TSLog.warn("Ignored a Schedule event because Scheduler is disabled: " + scheduleEvent));
            return;
        }
        a(scheduleEvent);
        if (LifecycleManager.getInstance().isHeadless()) {
            HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, "schedule", scheduleEvent.getState()));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onSecurityException(SecurityExceptionEvent securityExceptionEvent) {
        TSLog.logger.warn(TSLog.warn("BackgroundGeolocation onSecurityException: " + securityExceptionEvent.toString()));
        synchronized (this.y) {
            Iterator<TSSecurityExceptionCallback> it = this.y.iterator();
            while (it.hasNext()) {
                it.next().onSecurityException(securityExceptionEvent);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onSettingsFailure(SettingsFailureEvent settingsFailureEvent) {
        getUiHandler().post(new TSNotification(this.g, settingsFailureEvent.title, settingsFailureEvent.message));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void _onTemplateError(TemplateErrorEvent templateErrorEvent) {
        TSMediaPlayer.getInstance().debug(this.g, "tslocationmanager_music_timpani_error_01");
        getUiHandler().post(new TSNotification(this.g, "You have an error in your " + templateErrorEvent.getTemplateName(), templateErrorEvent.getError().getMessage()));
    }

    public void addGeofence(TSGeofence tSGeofence, TSCallback tSCallback) {
        TSGeofenceManager.getInstance(this.g).add(tSGeofence, tSCallback);
    }

    public void addGeofences(List<TSGeofence> list, TSCallback tSCallback) {
        TSGeofenceManager.getInstance(this.g).add(list, tSCallback);
    }

    public void changePace(boolean z, TSCallback tSCallback) {
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        if (!tSConfig.getEnabled().booleanValue()) {
            tSCallback.onFailure("BackgroundGeolocation is disabled");
            return;
        }
        if (!tSConfig.isLocationTrackingMode()) {
            z = false;
        }
        getThreadPool().execute(new ChangePaceTask(z, tSCallback));
    }

    public void clearDatabase(TSCallback tSCallback) {
        destroyLocations(tSCallback);
    }

    public void destroyLocation(String str) {
        destroyLocation(str, new C0898w());
    }

    public void destroyLocations(TSCallback tSCallback) {
        getThreadPool().execute(new S(tSCallback));
    }

    public void destroyLog(TSCallback tSCallback) {
        TSLog.destroyLog(tSCallback);
    }

    public void emailLog(String str, Activity activity, TSEmailLogCallback tSEmailLogCallback) {
        TSLog.emailLog(str, activity, tSEmailLogCallback);
    }

    public void fireNotificationActionListeners(String str) {
        if (LifecycleManager.getInstance().isHeadless()) {
            HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, "notificationaction", str));
        }
        getUiHandler().post(new H(str));
    }

    public void geofenceExists(String str, TSHasGeofenceCallback tSHasGeofenceCallback) {
        getThreadPool().execute(new RunnableC0890o(str, tSHasGeofenceCallback));
    }

    public Activity getActivity() {
        return this.h;
    }

    public int getCount() {
        return c(this.g).count();
    }

    public void getCurrentPosition(TSCurrentPositionRequest tSCurrentPositionRequest) {
        getThreadPool().execute(new RunnableC0884i(tSCurrentPositionRequest));
    }

    public void getGeofence(String str, TSGetGeofenceCallback tSGetGeofenceCallback) {
        getThreadPool().execute(new RunnableC0889n(str, tSGetGeofenceCallback));
    }

    public void getGeofences(TSGetGeofencesCallback tSGetGeofencesCallback) {
        getThreadPool().execute(new U(tSGetGeofencesCallback));
    }

    public JSONArray getLocations() {
        List<LocationModel> listAll = c(this.g).all();
        JSONArray jSONArray = new JSONArray();
        Iterator<LocationModel> it = listAll.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().json);
        }
        return jSONArray;
    }

    public String getLog() {
        return TSLogReader.getLog(new SQLQuery());
    }

    public Float getOdometer() {
        return TSConfig.getInstance(this.g).getOdometer();
    }

    public LocationProviderChangeEvent getProviderState() {
        return new LocationProviderChangeEvent(this.g);
    }

    public Sensors getSensors() {
        return Sensors.getInstance(this.g);
    }

    public void insertLocation(JSONObject jSONObject, TSInsertLocationCallback tSInsertLocationCallback) {
        if (!jSONObject.has("timestamp")) {
            tSInsertLocationCallback.onFailure("insertLocation params must contain timestamp");
        } else if (jSONObject.has("coords")) {
            getThreadPool().execute(new X(jSONObject, tSInsertLocationCallback));
        } else {
            tSInsertLocationCallback.onFailure("insertLocation params must contains a coords {}");
        }
    }

    public boolean isDead() {
        return this.g == null;
    }

    public Boolean isIgnoringBatteryOptimizations() {
        return DeviceSettings.getInstance().isIgnoringBatteryOptimization(this.g);
    }

    public Boolean isPowerSaveMode() {
        return DeviceSettings.getInstance().isPowerSaveMode(this.g);
    }

    public void onActivityChange(TSActivityChangeCallback tSActivityChangeCallback) {
        a(tSActivityChangeCallback);
    }

    public void onActivityDestroy() {
        this.i.set(false);
        this.h = null;
        TSLocationManager.getInstance(this.g).stopWatchPosition();
        LifecycleManager.getInstance().setHeadless(true);
        a();
        getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.e();
            }
        });
    }

    public void onActivityResumed() {
        TSScheduleManager.getInstance(this.g).cancelOneShot(TerminateEvent.ACTION);
    }

    public void onActivityStopped() {
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        if (tSConfig.getEnabled().booleanValue() && tSConfig.getEnableHeadless().booleanValue() && !tSConfig.getStopOnTerminate().booleanValue()) {
            TSScheduleManager.getInstance(this.g).oneShot(TerminateEvent.ACTION, 5000L, true, false);
        }
    }

    public void onConnectivityChange(TSConnectivityChangeCallback tSConnectivityChangeCallback) {
        a(tSConnectivityChangeCallback);
    }

    public void onEnabledChange(TSEnabledChangeCallback tSEnabledChangeCallback) {
        a(tSEnabledChangeCallback);
    }

    public void onGeofence(TSGeofenceCallback tSGeofenceCallback) {
        a(tSGeofenceCallback);
    }

    public void onGeofencesChange(TSGeofencesChangeCallback tSGeofencesChangeCallback) {
        a(tSGeofencesChangeCallback);
    }

    public void onHeartbeat(TSHeartbeatCallback tSHeartbeatCallback) {
        a(tSHeartbeatCallback);
    }

    public void onHttp(TSHttpResponseCallback tSHttpResponseCallback) {
        a(tSHttpResponseCallback);
    }

    public void onLocation(TSLocationCallback tSLocationCallback) {
        a(tSLocationCallback);
    }

    public void onLocationProviderChange(TSLocationProviderChangeCallback tSLocationProviderChangeCallback) {
        a(tSLocationProviderChangeCallback);
    }

    public void onMotionChange(TSLocationCallback tSLocationCallback) {
        b(tSLocationCallback);
    }

    public void onNotificationAction(TSNotificationActionCallback tSNotificationActionCallback) {
        a(tSNotificationActionCallback);
    }

    public void onPlayServicesConnectError(TSPlayServicesConnectErrorCallback tSPlayServicesConnectErrorCallback) {
        a(tSPlayServicesConnectErrorCallback);
    }

    public void onPowerSaveChange(TSPowerSaveChangeCallback tSPowerSaveChangeCallback) {
        a(tSPowerSaveChangeCallback);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPowerSaveModeChange(PowerSaveModeChangeEvent powerSaveModeChangeEvent) {
        synchronized (this.u) {
            Iterator<TSPowerSaveChangeCallback> it = this.u.iterator();
            if (LifecycleManager.getInstance().isHeadless()) {
                HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, EVENT_POWERSAVECHANGE, powerSaveModeChangeEvent));
            }
            while (it.hasNext()) {
                it.next().onPowerSaveChange(powerSaveModeChangeEvent.isPowerSaveMode());
            }
        }
    }

    public void onSchedule(TSScheduleCallback tSScheduleCallback) {
        a(tSScheduleCallback);
    }

    public void onSecurityException(TSSecurityExceptionCallback tSSecurityExceptionCallback) {
        a(tSSecurityExceptionCallback);
    }

    public void persistLocation(TSLocation tSLocation) {
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        if (tSConfig.shouldPersist(tSLocation)) {
            if (EventBus.getDefault().hasSubscriberForEvent(PersistEvent.class)) {
                if (TSPlugin.getInstance().canUsePersistEvent(this.g)) {
                    EventBus.getDefault().post(new PersistEvent(this.g, tSLocation, tSConfig.getParams()));
                    return;
                } else {
                    TSLog.logger.warn(TSLog.warn("Failed to persist location"));
                    return;
                }
            }
            if (tSConfig.getMaxDaysToPersist().intValue() == 0 || !tSConfig.getPersist().booleanValue()) {
                return;
            }
            getThreadPool().execute(new Y(tSLocation));
        }
    }

    public void ready(TSCallback tSCallback) {
        Boolean enabled;
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        if (!this.i.get() && !tSConfig.getConfigUrl().isEmpty() && this.k.compareAndSet(false, true)) {
            tSConfig.loadConfig(new C0877b(new R(tSCallback)));
            return;
        }
        if (this.i.get()) {
            if (tSConfig.getEnabled().booleanValue()) {
                TSLocationManager.getInstance(this.g).getCurrentPosition(new TSCurrentPositionRequest.Builder(this.g).setPersist(false).setSamples(1).setDesiredAccuracy(100).setMaximumAge(60000L).build());
            }
            tSCallback.onSuccess();
            return;
        }
        this.i.set(true);
        TSProviderManager.getInstance(this.g).startMonitoring(this.g);
        if (tSConfig.hasSchedule() && tSConfig.getSchedulerEnabled().booleanValue()) {
            startSchedule();
            enabled = Boolean.FALSE;
        } else {
            tSConfig.setSchedulerEnabled(Boolean.FALSE);
            enabled = tSConfig.getEnabled();
        }
        if (!enabled.booleanValue()) {
            tSCallback.onSuccess();
        } else if (tSConfig.isLocationTrackingMode()) {
            start(tSCallback);
        } else {
            startGeofences(tSCallback);
        }
        EventBus.getDefault().post(new LocationProviderChangeEvent(this.g));
    }

    public void registerPlugin(int i) {
        TSPlugin.getInstance().register(this.g, i);
    }

    public void removeGeofence(String str, TSCallback tSCallback) {
        TSGeofenceManager.getInstance(this.g).remove(str, tSCallback);
    }

    public void removeGeofences(List<String> list, TSCallback tSCallback) {
        TSGeofenceManager.getInstance(this.g).remove(list, tSCallback);
    }

    public Object removeListener(String str, Object obj) {
        Boolean boolValueOf;
        if (str.equalsIgnoreCase("geofenceschange")) {
            TSGeofenceManager.getInstance(this.g).removeListener(str, obj);
        } else {
            if (!"authorization".equalsIgnoreCase(str)) {
                List listA = a(str);
                boolValueOf = listA != null ? Boolean.valueOf(listA.remove(obj)) : null;
                if (boolValueOf != null) {
                    TSLog.logger.debug(TSLog.ok("removeListener event: " + str));
                    return boolValueOf;
                }
                TSLog.logger.warn(TSLog.warn("Failed to removeListener, event: " + str));
                return boolValueOf;
            }
            HttpService.getInstance(this.g).removeListener(str, obj);
        }
        if (boolValueOf != null) {
            TSLog.logger.debug(TSLog.ok("removeListener event: " + str));
            return boolValueOf;
        }
        TSLog.logger.warn(TSLog.warn("Failed to removeListener, event: " + str));
        return boolValueOf;
    }

    public void removeListeners() {
        a();
    }

    public void requestPermission(TSRequestPermissionCallback tSRequestPermissionCallback) {
        LocationAuthorization.withBackgroundPermission(this.g, new C0900y(tSRequestPermissionCallback));
    }

    public DeviceSettingsRequest requestSettings(String str) {
        return DeviceSettings.getInstance().request(this.g, str);
    }

    public void requestTemporaryFullAccuracy(String str, TSRequestPermissionCallback tSRequestPermissionCallback) {
        if (ContextCompat.checkSelfPermission(this.g, RNBackgroundGeolocationModule.ACCESS_FINE_LOCATION) == 0) {
            tSRequestPermissionCallback.onSuccess(TSProviderManager.ACCURACY_AUTHORIZATION_FULL);
        } else {
            LocationAuthorization.requestTemporaryFullAccuracy(this.g, new A(tSRequestPermissionCallback));
        }
    }

    public void setActivity(Activity activity) {
        if (this.h == activity) {
            return;
        }
        this.h = activity;
    }

    public void setBeforeInsertBlock(TSBeforeInsertBlock tSBeforeInsertBlock) {
        SQLiteLocationDAO.getInstance(this.g).setBeforeInsertBlock(tSBeforeInsertBlock);
    }

    public void setOdometer(Float f, TSLocationCallback tSLocationCallback) {
        TSLocationManager tSLocationManager = TSLocationManager.getInstance(this.g);
        if (tSLocationManager.isLocationServicesEnabled().booleanValue()) {
            getThreadPool().execute(new RunnableC0894s(tSLocationManager, f, tSLocationCallback));
        } else {
            tSLocationCallback.onError(1);
            b(1);
        }
    }

    public boolean showSettings(String str) {
        return DeviceSettings.getInstance().show(this.g, str);
    }

    public void start(TSCallback tSCallback) {
        if (this.l != null) {
            tSCallback.onFailure("Waiting for previous start action to complete");
        } else {
            a(tSCallback);
        }
    }

    public void startBackgroundTask(TSBackgroundTaskCallback tSBackgroundTaskCallback) {
        BackgroundTaskManager.getInstance().startBackgroundTask(this.g, tSBackgroundTaskCallback);
    }

    public void startGeofences(TSCallback tSCallback) {
        if (this.l != null) {
            tSCallback.onFailure("Waiting for previous start action to complete");
        } else {
            b(tSCallback);
        }
    }

    public void startOnBoot() {
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (googleApiAvailability.isGooglePlayServicesAvailable(this.g) != 0) {
            TSLog.logger.warn(TSLog.warn("GooglePlayServices unavailable.  resultCode: " + googleApiAvailability.isGooglePlayServicesAvailable(this.g)));
        } else {
            TrackingService.start(this.g);
            if (LifecycleManager.getInstance().isHeadless()) {
                HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, EVENT_BOOT, tSConfig.toJson()));
            }
        }
    }

    public void startOnSchedule() {
        TSProviderManager.getInstance(this.g).startMonitoring(this.g);
        TrackingService.start(this.g);
    }

    public boolean startSchedule() {
        if (TSConfig.getInstance(this.g).hasSchedule()) {
            TSScheduleManager.getInstance(this.g).start();
            return true;
        }
        TSLog.logger.warn(TSLog.warn("Cannot startSchedule; schedule is null"));
        return false;
    }

    public void startTone(int i) {
    }

    public void stop(final TSCallback tSCallback) {
        if (this.l != null) {
            this.l = null;
        }
        this.j.set(false);
        getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.c(tSCallback);
            }
        });
    }

    public void stopBackgroundTask(int i) {
        BackgroundTaskManager.getInstance().stopBackgroundTask(this.g, i);
    }

    public void stopOnSchedule() {
        TSConfig.getInstance(this.g).setIsMoving(Boolean.FALSE);
        if (LifecycleManager.getInstance().isHeadless()) {
            TSProviderManager.getInstance(this.g).stopMonitoring(this.g);
        }
        this.j.set(false);
        this.l = null;
        TrackingService.stop(this.g);
    }

    public void stopSchedule() {
        TSScheduleManager.getInstance(this.g).stop();
    }

    public void stopWatchPosition(TSCallback tSCallback) {
        getThreadPool().execute(new RunnableC0886k());
        tSCallback.onSuccess();
    }

    public void sync(TSSyncCallback tSSyncCallback) {
        getThreadPool().execute(new a0(tSSyncCallback));
    }

    public void watchPosition(TSWatchPositionRequest tSWatchPositionRequest) {
        getThreadPool().execute(new RunnableC0885j(tSWatchPositionRequest));
    }

    private class a0 implements Runnable {
        private TSSyncCallback a;

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                a0.this.a.onFailure("HTTPService is busy");
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override
            public void run() {
                a0.this.a.onFailure("No network connection");
            }
        }

        class c implements Runnable {
            final List a;

            c(List list) {
                this.a = list;
            }

            @Override
            public void run() {
                a0.this.a.onSuccess(this.a);
            }
        }

        a0(TSSyncCallback tSSyncCallback) {
            this.a = tSSyncCallback;
        }

        @Override
        public void run() {
            if (!TSConfig.getInstance(BackgroundGeolocation.this.g).hasUrl()) {
                if (this.a != null) {
                    SQLiteLocationDAO sQLiteLocationDAOC = BackgroundGeolocation.c(BackgroundGeolocation.this.g);
                    List<LocationModel> listAll = sQLiteLocationDAOC.all();
                    sQLiteLocationDAOC.destroyAll(listAll);
                    BackgroundGeolocation.getUiHandler().post(new c(listAll));
                    return;
                }
                return;
            }
            HttpService httpService = HttpService.getInstance(BackgroundGeolocation.this.g);
            if (!httpService.isNetworkAvailable()) {
                if (this.a != null) {
                    BackgroundGeolocation.getUiHandler().post(new b());
                }
            } else {
                if (!httpService.isBusy()) {
                    httpService.flush(this.a);
                    return;
                }
                TSLog.logger.info(TSLog.notice("HTTPService is busy with an existing request."));
                if (this.a != null) {
                    BackgroundGeolocation.getUiHandler().post(new a());
                }
            }
        }

        a0() {
        }
    }

    private static synchronized BackgroundGeolocation b(Context context) {
        if (b == null) {
            BackgroundGeolocation backgroundGeolocation = new BackgroundGeolocation(context);
            b = backgroundGeolocation;
            backgroundGeolocation.d();
        }
        return b;
    }

    public void e() {
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        if (tSConfig.getStopOnTerminate().booleanValue()) {
            TSScheduleManager.getInstance(this.g).cancelOneShot(TerminateEvent.ACTION);
            if (tSConfig.getEnabled().booleanValue()) {
                tSConfig.setEnabled(Boolean.FALSE);
                TrackingService.stop(this.g);
            }
            this.j.set(false);
            TSProviderManager.getInstance(this.g).stopMonitoring(this.g);
            TSScheduleManager.getInstance(this.g).stop();
        }
        StringBuilder sbAppend = new StringBuilder().append(TSLog.header("MainActivity was destroyed")).append(TSLog.boxRow("stopOnTerminate: " + tSConfig.getStopOnTerminate())).append(TSLog.boxRow("enabled: " + tSConfig.getEnabled()));
        b();
        TSLog.logger.info(sbAppend.toString());
    }

    public static BackgroundGeolocation getInstance(Context context) {
        BackgroundGeolocation backgroundGeolocation = b;
        if (backgroundGeolocation == null || backgroundGeolocation.isDead()) {
            b = b(context);
        }
        if (context instanceof Activity) {
            b.setActivity((Activity) context);
        }
        return b;
    }

    public void addGeofence(TSGeofence tSGeofence) {
        addGeofence(tSGeofence, new C0887l());
    }

    public void addGeofences(List<TSGeofence> list) {
        addGeofences(list, new C0888m());
    }

    void d() {
        TSLocationManager.getInstance(this.g);
        HttpService.getInstance(this.g);
        TSScheduleManager.getInstance(this.g);
        TSGeofenceManager.getInstance(this.g);
        TSConfig tSConfig = TSConfig.getInstance(this.g);
        TSProviderManager.getInstance(this.g).startMonitoring(this.g);
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (googleApiAvailability.isGooglePlayServicesAvailable(this.g) != 0) {
            TSLog.logger.warn(TSLog.warn("GooglePlayServices unavailable.  resultCode: " + googleApiAvailability.isGooglePlayServicesAvailable(this.g)));
        }
        if (tSConfig.getEnabled().booleanValue() && LifecycleManager.getInstance().isHeadless() && !tSConfig.getDidDeviceReboot().booleanValue()) {
            TrackingService.restart(this.g);
        }
        tSConfig.onChange(ViewProps.ENABLED, new C0876a());
        tSConfig.onChange("geofenceTemplate", new C0897v());
        tSConfig.onChange("locationTemplate", new G());
        tSConfig.onChange("heartbeatInterval", new M());
        tSConfig.onChange("notification.sticky", new N());
        tSConfig.onChange("locationAuthorizationRequest", new O());
        tSConfig.onChange("disableMotionActivityUpdates", new P());
        TSMediaPlayer.getInstance().init(this.g);
        c.execute(new Q(tSConfig));
        if (LifecycleManager.getInstance().isHeadless() && tSConfig.getEnabled().booleanValue()) {
            getThreadPool().execute(TSGeofenceManager.getInstance(this.g));
        }
    }

    public void destroyLocation(String str, TSCallback tSCallback) {
        getThreadPool().execute(new RunnableC0899x(str, tSCallback));
    }

    public void destroyLocations() {
        destroyLocations(new C0896u());
    }

    public void destroyLog() {
        destroyLog(new C0895t());
    }

    public void geofenceExists(String str, TSGeofenceExistsCallback tSGeofenceExistsCallback) {
        TSGeofenceManager.getInstance(this.g).geofenceExists(str, tSGeofenceExistsCallback);
    }

    public void getCount(TSGetCountCallback tSGetCountCallback) {
        getThreadPool().execute(new T(tSGetCountCallback));
    }

    public void getLog(TSGetLogCallback tSGetLogCallback) {
        TSLog.getLog(tSGetLogCallback);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onConnectivityChange(ConnectivityChangeEvent connectivityChangeEvent) {
        synchronized (this.q) {
            Iterator<TSConnectivityChangeCallback> it = this.q.iterator();
            if (LifecycleManager.getInstance().isHeadless()) {
                HeadlessEventBroadcaster.post(new HeadlessEvent(this.g, EVENT_CONNECTIVITYCHANGE, connectivityChangeEvent));
            }
            while (it.hasNext()) {
                it.next().onConnectivityChange(connectivityChangeEvent);
            }
        }
    }

    public void removeGeofence(String str) {
        removeGeofence(str, new C0891p());
    }

    public void removeGeofences(List<String> list) {
        removeGeofences(list, new C0892q());
    }

    public void removeListeners(String str) {
        TSLog.logger.debug(TSLog.ok("event: " + str));
        if (str.equalsIgnoreCase("geofenceschange")) {
            TSGeofenceManager.getInstance(this.g).removeListeners();
            return;
        }
        if ("authorization".equalsIgnoreCase(str)) {
            HttpService.getInstance(this.g).removeListeners();
            return;
        }
        List listA = a(str);
        if (listA != null) {
            synchronized (listA) {
                listA.clear();
            }
        }
    }

    public void requestPermission(String str, TSRequestPermissionCallback tSRequestPermissionCallback) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        LocationAuthorization.requestPermission(this.g, arrayList, new C0901z(tSRequestPermissionCallback));
    }

    public void startTone(String str) {
        try {
            TSMediaPlayer.getInstance().play(this.g, (String) TSMediaPlayer.class.getDeclaredField(str).get(str));
        } catch (Exception unused) {
            TSLog.logger.error(TSLog.error("Unknown sound key: " + str));
        }
    }

    public void sync() {
        getThreadPool().execute(new a0());
    }

    public static SQLiteLocationDAO c(Context context) {
        return SQLiteLocationDAO.getInstance(context);
    }

    public void removeGeofences(TSCallback tSCallback) {
        TSGeofenceManager.getInstance(this.g).remove(new ArrayList(), tSCallback);
    }

    public void c(final TSCallback tSCallback) {
        TrackingService.stop(this.g);
        Handler uiHandler = getUiHandler();
        Objects.requireNonNull(tSCallback);
        uiHandler.post(new Runnable() {
            @Override
            public final void run() {
                tSCallback.onSuccess();
            }
        });
    }

    public void removeGeofences() {
        removeGeofences(new C0893r());
    }

    private void a(TSCallback tSCallback) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (googleApiAvailability.isGooglePlayServicesAvailable(this.g) != 0) {
            int iIsGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(this.g);
            TSLog.logger.warn(TSLog.warn("GooglePlayServices unavailable.  resultCode: " + iIsGooglePlayServicesAvailable));
            a(iIsGooglePlayServicesAvailable);
            return;
        }
        LocationAuthorization.withBackgroundPermission(this.g, new C0878c(tSCallback));
    }

    public void getLocations(TSGetLocationsCallback tSGetLocationsCallback) {
        getThreadPool().execute(new V(tSGetLocationsCallback));
    }

    public void start() {
        TSCallback c0879d = new C0879d();
        Z z = this.l;
        if (z != null) {
            c0879d = z.a();
            this.l = null;
        }
        a(c0879d);
    }

    public void startGeofences() {
        TSCallback c0880e = new C0880e();
        Z z = this.l;
        if (z != null) {
            c0880e = z.a();
        }
        b(c0880e);
    }

    public void stop() {
        stop(new C0882g());
    }

    private void b(TSCallback tSCallback) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (googleApiAvailability.isGooglePlayServicesAvailable(this.g) != 0) {
            TSLog.logger.warn(TSLog.warn("GooglePlayServices unavailable.  resultCode: " + googleApiAvailability.isGooglePlayServicesAvailable(this.g)));
        } else {
            LocationAuthorization.withBackgroundPermission(this.g, new C0881f(tSCallback));
        }
    }

    public void changePace(boolean z) {
        changePace(z, new C0883h());
    }

    private List a(String str) {
        if ("location".equalsIgnoreCase(str)) {
            return this.m;
        }
        if (EVENT_MOTIONCHANGE.equals(str)) {
            return this.f3733n;
        }
        if (EVENT_ACTIVITYCHANGE.equalsIgnoreCase(str)) {
            return this.t;
        }
        if ("geofence".equalsIgnoreCase(str)) {
            return this.o;
        }
        if (EVENT_PROVIDERCHANGE.equalsIgnoreCase(str)) {
            return this.v;
        }
        if ("heartbeat".equalsIgnoreCase(str)) {
            return this.s;
        }
        if ("http".equalsIgnoreCase(str)) {
            return this.r;
        }
        if ("schedule".equalsIgnoreCase(str)) {
            return this.w;
        }
        if (EVENT_POWERSAVECHANGE.equalsIgnoreCase(str)) {
            return this.u;
        }
        if (EVENT_ENABLEDCHANGE.equalsIgnoreCase(str)) {
            return this.p;
        }
        if (EVENT_CONNECTIVITYCHANGE.equalsIgnoreCase(str)) {
            return this.q;
        }
        if ("notificationaction".equalsIgnoreCase(str)) {
            return this.z;
        }
        return null;
    }

    private void b(TSLocationCallback tSLocationCallback) {
        synchronized (this.f3733n) {
            this.f3733n.add(tSLocationCallback);
        }
    }

    private void b(int i) {
        getUiHandler().post(new F(i));
    }

    public void b() {
        new File(this.g.getCacheDir(), TSLog.LOG_FILENAME).delete();
    }

    private void a(TSLocationCallback tSLocationCallback) {
        synchronized (this.m) {
            this.m.add(tSLocationCallback);
        }
    }

    private void a(TSHttpResponseCallback tSHttpResponseCallback) {
        synchronized (this.r) {
            this.r.add(tSHttpResponseCallback);
        }
    }

    private void a(TSHeartbeatCallback tSHeartbeatCallback) {
        synchronized (this.s) {
            this.s.add(tSHeartbeatCallback);
        }
    }

    private void a(TSActivityChangeCallback tSActivityChangeCallback) {
        synchronized (this.t) {
            this.t.add(tSActivityChangeCallback);
        }
    }

    private void a(TSPowerSaveChangeCallback tSPowerSaveChangeCallback) {
        synchronized (this.u) {
            this.u.add(tSPowerSaveChangeCallback);
        }
    }

    private void a(TSLocationProviderChangeCallback tSLocationProviderChangeCallback) {
        synchronized (this.v) {
            this.v.add(tSLocationProviderChangeCallback);
        }
    }

    private void a(TSConnectivityChangeCallback tSConnectivityChangeCallback) {
        synchronized (this.q) {
            this.q.add(tSConnectivityChangeCallback);
        }
    }

    private void a(TSEnabledChangeCallback tSEnabledChangeCallback) {
        synchronized (this.p) {
            this.p.add(tSEnabledChangeCallback);
        }
    }

    private void a(TSScheduleCallback tSScheduleCallback) {
        synchronized (this.w) {
            this.w.add(tSScheduleCallback);
        }
    }

    private void a(TSGeofencesChangeCallback tSGeofencesChangeCallback) {
        TSGeofenceManager.getInstance(this.g).onGeofencesChange(tSGeofencesChangeCallback);
    }

    private void a(TSGeofenceCallback tSGeofenceCallback) {
        synchronized (this.o) {
            this.o.add(tSGeofenceCallback);
        }
    }

    private void a(TSNotificationActionCallback tSNotificationActionCallback) {
        synchronized (this.z) {
            this.z.add(tSNotificationActionCallback);
        }
    }

    private void a(TSPlayServicesConnectErrorCallback tSPlayServicesConnectErrorCallback) {
        synchronized (this.x) {
            this.x.add(tSPlayServicesConnectErrorCallback);
        }
    }

    private void a(int i) {
        getUiHandler().post(new B(i));
    }

    private void a(TSSecurityExceptionCallback tSSecurityExceptionCallback) {
        synchronized (this.y) {
            this.y.add(tSSecurityExceptionCallback);
        }
    }

    private void a(ScheduleEvent scheduleEvent) {
        getUiHandler().post(new C(scheduleEvent));
    }

    private void a(ActivityTransitionEvent activityTransitionEvent) {
        getUiHandler().post(new D(activityTransitionEvent));
    }

    private void a(TSLocation tSLocation) {
        getUiHandler().post(new E(tSLocation));
    }

    public void a(LocationProviderChangeEvent locationProviderChangeEvent) {
        getUiHandler().post(new I(locationProviderChangeEvent));
    }

    private void a(HeartbeatEvent heartbeatEvent) {
        getUiHandler().post(new J(heartbeatEvent));
    }

    private void a(GeofenceEvent geofenceEvent) {
        getUiHandler().post(new K(geofenceEvent));
    }

    private void a(MotionChangeEvent motionChangeEvent) {
        getUiHandler().post(new L(motionChangeEvent));
    }

    private void a() {
        TSLog.logger.debug(TSLog.off("Cleared callbacks"));
        if (this.l != null) {
            this.l = null;
        }
        TSGeofenceManager.getInstance(this.g).removeListeners();
        HttpService.getInstance(this.g).removeListeners();
        synchronized (this) {
            this.m.clear();
            this.f3733n.clear();
            this.o.clear();
            this.r.clear();
            this.s.clear();
            this.t.clear();
            this.u.clear();
            this.w.clear();
            this.x.clear();
            this.v.clear();
            this.q.clear();
            this.p.clear();
            this.z.clear();
        }
    }
}
