package com.transistorsoft.rnbackgroundgeolocation;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.modules.core.RCTNativeAppEventEmitter;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.adapter.callback.TSActivityChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSAuthorizationCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSBackgroundTaskCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSConnectivityChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSEmailLogCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSEnabledChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGeofenceCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGeofenceExistsCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGeofencesChangeCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetGeofenceCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetGeofencesCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetLocationsCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSGetLogCallback;
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
import com.transistorsoft.locationmanager.adapter.callback.TSSyncCallback;
import com.transistorsoft.locationmanager.config.TSAuthorization;
import com.transistorsoft.locationmanager.config.TransistorAuthorizationToken;
import com.transistorsoft.locationmanager.data.LocationModel;
import com.transistorsoft.locationmanager.data.SQLQuery;
import com.transistorsoft.locationmanager.device.DeviceInfo;
import com.transistorsoft.locationmanager.device.DeviceSettingsRequest;
import com.transistorsoft.locationmanager.event.ActivityChangeEvent;
import com.transistorsoft.locationmanager.event.AuthorizationEvent;
import com.transistorsoft.locationmanager.event.ConnectivityChangeEvent;
import com.transistorsoft.locationmanager.event.FinishHeadlessTaskEvent;
import com.transistorsoft.locationmanager.event.GeofenceEvent;
import com.transistorsoft.locationmanager.event.GeofencesChangeEvent;
import com.transistorsoft.locationmanager.event.HeadlessEvent;
import com.transistorsoft.locationmanager.event.HeartbeatEvent;
import com.transistorsoft.locationmanager.event.LocationProviderChangeEvent;
import com.transistorsoft.locationmanager.event.TerminateEvent;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import com.transistorsoft.locationmanager.http.HttpResponse;
import com.transistorsoft.locationmanager.http.HttpService;
import com.transistorsoft.locationmanager.location.TSCurrentPositionRequest;
import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.location.TSWatchPositionRequest;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.scheduler.ScheduleEvent;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import com.transistorsoft.locationmanager.util.Sensors;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RNBackgroundGeolocationModule extends ReactContextBaseJavaModule implements ActivityEventListener, LifecycleEventListener {
    public static final String ACCESS_COARSE_LOCATION = "android.permission.ACCESS_COARSE_LOCATION";
    public static final String ACCESS_FINE_LOCATION = "android.permission.ACCESS_FINE_LOCATION";
    private static final String EVENT_WATCHPOSITION = "watchposition";
    private static final String JOB_SERVICE_CLASS = "HeadlessTask";
    public static final int REQUEST_ACTION_GET_CURRENT_POSITION = 2;
    public static final int REQUEST_ACTION_START = 1;
    public static final int REQUEST_ACTION_START_GEOFENCES = 3;
    private static final String TAG = "TSLocationManager";
    private List<String> mEvents;
    private boolean mInitialized;
    private final HashMap<String, Integer> mListeners;
    private boolean mReady;

    @ReactMethod
    public void addListener(String str) {
    }

    @Override
    public void initialize() {
    }

    @Override
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
    }

    @Override
    public void onNewIntent(Intent intent) {
    }

    @ReactMethod
    public void registerPlugin(String str) {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public RNBackgroundGeolocationModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.mInitialized = false;
        this.mReady = false;
        this.mListeners = new HashMap<>();
        this.mEvents = new ArrayList();
        reactApplicationContext.addLifecycleEventListener(this);
        TSConfig tSConfig = TSConfig.getInstance(getReactApplicationContext());
        tSConfig.useCLLocationAccuracy(true);
        tSConfig.updateWithBuilder().setHeadlessJobService(getClass().getPackage().getName() + ".HeadlessTask").commit();
        this.mEvents.add("location");
        this.mEvents.add(BackgroundGeolocation.EVENT_MOTIONCHANGE);
        this.mEvents.add(BackgroundGeolocation.EVENT_ACTIVITYCHANGE);
        this.mEvents.add(BackgroundGeolocation.EVENT_PROVIDERCHANGE);
        this.mEvents.add("geofenceschange");
        this.mEvents.add("geofence");
        this.mEvents.add("heartbeat");
        this.mEvents.add("http");
        this.mEvents.add("schedule");
        this.mEvents.add(BackgroundGeolocation.EVENT_POWERSAVECHANGE);
        this.mEvents.add(BackgroundGeolocation.EVENT_CONNECTIVITYCHANGE);
        this.mEvents.add(BackgroundGeolocation.EVENT_ENABLEDCHANGE);
        this.mEvents.add("notificationaction");
        this.mEvents.add("authorization");
    }

    @Override
    public String getName() {
        return "RNBackgroundGeolocation";
    }

    private void registerEvents() {
        BackgroundGeolocation adapter = getAdapter();
        adapter.onLocation(new LocationCallback());
        adapter.onMotionChange(new MotionChangeCallback());
        adapter.onActivityChange(new ActivityChangeCallback());
        adapter.onLocationProviderChange(new LocationProviderChangeCallback());
        adapter.onGeofencesChange(new GeofencesChangeCallback());
        adapter.onGeofence(new GeofenceCallback());
        adapter.onHeartbeat(new HeartbeatCallback());
        adapter.onHttp(new HttpResponseCallback());
        adapter.onSchedule(new ScheduleCallback());
        adapter.onPowerSaveChange(new PowerSaveChangeCallack());
        adapter.onConnectivityChange(new ConnectivityChangeCallback());
        adapter.onEnabledChange(new EnabledChangeCallback());
        adapter.onNotificationAction(new NotificationActionCallback());
        HttpService.getInstance(getReactApplicationContext()).onAuthorization(new AuthorizationCallback());
    }

    private class LocationCallback implements TSLocationCallback {
        private LocationCallback() {
        }

        @Override
        public void onLocation(TSLocation tSLocation) {
            try {
                RNBackgroundGeolocationModule.this.sendEvent("location", RNBackgroundGeolocationModule.jsonToMap(tSLocation.toJson()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onError(Integer num) {
            RNBackgroundGeolocationModule.this.onLocationError(num);
        }
    }

    private class MotionChangeCallback implements TSLocationCallback {
        private MotionChangeCallback() {
        }

        @Override
        public void onLocation(TSLocation tSLocation) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            writableNativeMap.putBoolean("isMoving", tSLocation.getIsMoving());
            try {
                writableNativeMap.putMap("location", RNBackgroundGeolocationModule.jsonToMap(tSLocation.toJson()));
                RNBackgroundGeolocationModule.this.sendEvent(BackgroundGeolocation.EVENT_MOTIONCHANGE, writableNativeMap);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onError(Integer num) {
            RNBackgroundGeolocationModule.this.onLocationError(num);
        }
    }

    private class ActivityChangeCallback implements TSActivityChangeCallback {
        private ActivityChangeCallback() {
        }

        @Override
        public void onActivityChange(ActivityChangeEvent activityChangeEvent) {
            try {
                RNBackgroundGeolocationModule.this.sendEvent(BackgroundGeolocation.EVENT_ACTIVITYCHANGE, RNBackgroundGeolocationModule.jsonToMap(activityChangeEvent.toJson()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private class LocationProviderChangeCallback implements TSLocationProviderChangeCallback {
        private LocationProviderChangeCallback() {
        }

        @Override
        public void onLocationProviderChange(LocationProviderChangeEvent locationProviderChangeEvent) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            writableNativeMap.putBoolean("network", locationProviderChangeEvent.isNetworkEnabled());
            writableNativeMap.putBoolean("gps", locationProviderChangeEvent.isGPSEnabled());
            writableNativeMap.putBoolean(ViewProps.ENABLED, locationProviderChangeEvent.isEnabled());
            writableNativeMap.putInt("accuracyAuthorization", locationProviderChangeEvent.getAccuracyAuthorization());
            writableNativeMap.putInt("status", locationProviderChangeEvent.getStatus());
            RNBackgroundGeolocationModule.this.sendEvent(BackgroundGeolocation.EVENT_PROVIDERCHANGE, writableNativeMap);
        }
    }

    private class ConnectivityChangeCallback implements TSConnectivityChangeCallback {
        private ConnectivityChangeCallback() {
        }

        @Override
        public void onConnectivityChange(ConnectivityChangeEvent connectivityChangeEvent) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            writableNativeMap.putBoolean("connected", connectivityChangeEvent.hasConnection());
            RNBackgroundGeolocationModule.this.sendEvent(BackgroundGeolocation.EVENT_CONNECTIVITYCHANGE, writableNativeMap);
        }
    }

    private class EnabledChangeCallback implements TSEnabledChangeCallback {
        private EnabledChangeCallback() {
        }

        @Override
        public void onEnabledChange(boolean z) {
            RNBackgroundGeolocationModule.this.sendEvent(BackgroundGeolocation.EVENT_ENABLEDCHANGE, Boolean.valueOf(z));
        }
    }

    private class NotificationActionCallback implements TSNotificationActionCallback {
        private NotificationActionCallback() {
        }

        @Override
        public void onClick(String str) {
            RNBackgroundGeolocationModule.this.sendEvent("notificationaction", str);
        }
    }

    private class GeofencesChangeCallback implements TSGeofencesChangeCallback {
        private GeofencesChangeCallback() {
        }

        @Override
        public void onGeofencesChange(GeofencesChangeEvent geofencesChangeEvent) {
            try {
                new WritableNativeMap();
                new WritableNativeArray();
                new WritableNativeArray();
                RNBackgroundGeolocationModule.this.sendEvent("geofenceschange", RNBackgroundGeolocationModule.jsonToMap(geofencesChangeEvent.toJson()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private class GeofenceCallback implements TSGeofenceCallback {
        private GeofenceCallback() {
        }

        @Override
        public void onGeofence(GeofenceEvent geofenceEvent) {
            try {
                RNBackgroundGeolocationModule.this.sendEvent("geofence", RNBackgroundGeolocationModule.jsonToMap(geofenceEvent.toJson()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private class HeartbeatCallback implements TSHeartbeatCallback {
        private HeartbeatCallback() {
        }

        @Override
        public void onHeartbeat(HeartbeatEvent heartbeatEvent) {
            try {
                RNBackgroundGeolocationModule.this.sendEvent("heartbeat", RNBackgroundGeolocationModule.jsonToMap(heartbeatEvent.toJson()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private class HttpResponseCallback implements TSHttpResponseCallback {
        private HttpResponseCallback() {
        }

        @Override
        public void onHttpResponse(HttpResponse httpResponse) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            writableNativeMap.putBoolean(FirebaseAnalytics.Param.SUCCESS, httpResponse.isSuccess().booleanValue());
            writableNativeMap.putInt("status", httpResponse.status);
            writableNativeMap.putString("responseText", httpResponse.responseText);
            RNBackgroundGeolocationModule.this.sendEvent("http", writableNativeMap);
        }
    }

    private class ScheduleCallback implements TSScheduleCallback {
        private ScheduleCallback() {
        }

        @Override
        public void onSchedule(ScheduleEvent scheduleEvent) {
            try {
                RNBackgroundGeolocationModule.this.sendEvent("schedule", RNBackgroundGeolocationModule.jsonToMap(scheduleEvent.getState()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private class PowerSaveChangeCallack implements TSPowerSaveChangeCallback {
        private PowerSaveChangeCallack() {
        }

        @Override
        public void onPowerSaveChange(Boolean bool) {
            RNBackgroundGeolocationModule.this.sendEvent(BackgroundGeolocation.EVENT_POWERSAVECHANGE, bool);
        }
    }

    private class AuthorizationCallback implements TSAuthorizationCallback {
        private AuthorizationCallback() {
        }

        @Override
        public void onResponse(AuthorizationEvent authorizationEvent) {
            try {
                RNBackgroundGeolocationModule.this.sendEvent("authorization", RNBackgroundGeolocationModule.jsonToMap(authorizationEvent.toJson()));
            } catch (JSONException e) {
                TSLog.logger.error(TSLog.error(e.getMessage()), (Throwable) e);
            }
        }
    }

    @Override
    public void onHostResume() {
        if (!this.mInitialized) {
            initializeLocationManager();
        }
        Activity currentActivity = getCurrentActivity();
        if (currentActivity == null) {
            return;
        }
        getAdapter().setActivity(currentActivity);
    }

    @Override
    public void onHostPause() {
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        if (TSConfig.getInstance(reactApplicationContext).getEnabled().booleanValue()) {
            TSScheduleManager.getInstance(reactApplicationContext).oneShot(TerminateEvent.ACTION, 10000L);
        }
    }

    @Override
    public void onHostDestroy() {
        this.mInitialized = false;
        this.mReady = false;
        removeAllListeners();
        getAdapter().onActivityDestroy();
    }

    @ReactMethod
    public void ready(ReadableMap readableMap, final Callback callback, final Callback callback2) {
        ReadableMap map;
        TSConfig tSConfig = TSConfig.getInstance(getReactApplicationContext());
        boolean z = readableMap.hasKey("reset") ? readableMap.getBoolean("reset") : true;
        if (this.mReady) {
            if (z) {
                TSLog.logger.warn(TSLog.warn("#ready already called.  Redirecting to #setConfig"));
                setConfig(readableMap, callback, callback2);
                return;
            } else {
                TSLog.logger.warn(TSLog.warn("#ready already called.  Ignored config since reset: false"));
                callback.invoke(getState());
                return;
            }
        }
        this.mReady = true;
        registerEvents();
        if (tSConfig.isFirstBoot().booleanValue()) {
            tSConfig.updateWithJSONObject(mapToJson(setHeadlessJobService(readableMap)));
        } else if (z) {
            tSConfig.reset();
            tSConfig.updateWithJSONObject(mapToJson(setHeadlessJobService(readableMap)));
        } else if (readableMap.hasKey("authorization") && (map = readableMap.getMap("authorization")) != null) {
            HashMap<String, Object> hashMap = map.toHashMap();
            hashMap.put(TSAuthorization.FIELD_EXPIRES, Integer.valueOf(map.getInt(TSAuthorization.FIELD_EXPIRES)));
            tSConfig.updateWithBuilder().setAuthorization(new TSAuthorization(hashMap)).commit();
        }
        getAdapter().ready(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(RNBackgroundGeolocationModule.this.getState());
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void configure(ReadableMap readableMap, final Callback callback, final Callback callback2) {
        TSConfig tSConfig = TSConfig.getInstance(getReactApplicationContext());
        tSConfig.reset();
        tSConfig.updateWithJSONObject(mapToJson(setHeadlessJobService(readableMap)));
        getAdapter().ready(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(RNBackgroundGeolocationModule.this.getState());
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void setConfig(ReadableMap readableMap, Callback callback, Callback callback2) {
        TSConfig.getInstance(getReactApplicationContext()).updateWithJSONObject(mapToJson(readableMap));
        callback.invoke(getState());
    }

    @ReactMethod
    public void reset(ReadableMap readableMap, Callback callback, Callback callback2) {
        TSConfig tSConfig = TSConfig.getInstance(getReactApplicationContext());
        tSConfig.reset();
        tSConfig.updateWithJSONObject(mapToJson(setHeadlessJobService(readableMap)));
        callback.invoke(getState());
    }

    @ReactMethod
    public void start(final Callback callback, final Callback callback2) {
        getAdapter().start(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(RNBackgroundGeolocationModule.this.getState());
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void startSchedule(Callback callback, Callback callback2) {
        if (getAdapter().startSchedule()) {
            callback.invoke(getState());
        } else {
            callback2.invoke("Failed to start schedule.  Did you configure a #schedule?");
        }
    }

    @ReactMethod
    public void stopSchedule(Callback callback, Callback callback2) {
        getAdapter().stopSchedule();
        callback.invoke(getState());
    }

    @ReactMethod
    public void startGeofences(final Callback callback, final Callback callback2) {
        getAdapter().startGeofences(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(RNBackgroundGeolocationModule.this.getState());
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void stop(final Callback callback, final Callback callback2) {
        getAdapter().stop(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(RNBackgroundGeolocationModule.this.getState());
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void changePace(Boolean bool, final Callback callback, final Callback callback2) {
        getAdapter().changePace(bool.booleanValue(), new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void getState(Callback callback, Callback callback2) {
        callback.invoke(getState());
    }

    @ReactMethod
    public void getLocations(final Callback callback, final Callback callback2) {
        getAdapter().getLocations(new TSGetLocationsCallback() {
            @Override
            public void onSuccess(List<LocationModel> list) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<LocationModel> it = list.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next().json);
                    }
                    callback.invoke(RNBackgroundGeolocationModule.convertJsonToArray(jSONArray));
                } catch (JSONException e) {
                    e.printStackTrace();
                    callback2.invoke(e.getMessage());
                }
            }

            @Override
            public void onFailure(Integer num) {
                callback2.invoke(num);
            }
        });
    }

    @ReactMethod
    public void getCount(Callback callback, Callback callback2) {
        callback.invoke(Integer.valueOf(getAdapter().getCount()));
    }

    @ReactMethod
    public void insertLocation(ReadableMap readableMap, final Callback callback, final Callback callback2) {
        getAdapter().insertLocation(mapToJson(readableMap), new TSInsertLocationCallback() {
            @Override
            public void onSuccess(String str) {
                callback.invoke(str);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void clearDatabase(Callback callback, Callback callback2) {
        destroyLocations(callback, callback2);
    }

    @ReactMethod
    public void destroyLocations(final Callback callback, final Callback callback2) {
        getAdapter().destroyLocations(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void destroyLocation(String str, final Callback callback, final Callback callback2) {
        getAdapter().destroyLocation(str, new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str2) {
                callback2.invoke(str2);
            }
        });
    }

    @ReactMethod
    public void destroyLog(final Callback callback, final Callback callback2) {
        getAdapter().destroyLog(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(true);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void sync(final Callback callback, final Callback callback2) {
        getAdapter().sync(new TSSyncCallback() {
            @Override
            public void onSuccess(List<LocationModel> list) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<LocationModel> it = list.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next().json);
                    }
                    callback.invoke(RNBackgroundGeolocationModule.convertJsonToArray(jSONArray));
                } catch (JSONException e) {
                    callback2.invoke(e.getMessage());
                }
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void getCurrentPosition(ReadableMap readableMap, final Callback callback, final Callback callback2) {
        TSCurrentPositionRequest.Builder builder = new TSCurrentPositionRequest.Builder(getReactApplicationContext());
        builder.setCallback(new TSLocationCallback() {
            @Override
            public void onLocation(TSLocation tSLocation) {
                try {
                    callback.invoke(RNBackgroundGeolocationModule.jsonToMap(tSLocation.toJson()));
                } catch (JSONException e) {
                    callback2.invoke(e.getMessage());
                }
            }

            @Override
            public void onError(Integer num) {
                callback2.invoke(num);
            }
        });
        if (readableMap.hasKey("samples")) {
            builder.setSamples(readableMap.getInt("samples"));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_EXTRAS)) {
            builder.setExtras(mapToJson(readableMap.getMap(TSGeofence.FIELD_EXTRAS)));
        }
        if (readableMap.hasKey("persist")) {
            builder.setPersist(readableMap.getBoolean("persist"));
        }
        if (readableMap.hasKey("timeout")) {
            builder.setTimeout(readableMap.getInt("timeout"));
        }
        if (readableMap.hasKey("maximumAge")) {
            builder.setMaximumAge(Long.valueOf(readableMap.getInt("maximumAge")));
        }
        if (readableMap.hasKey("desiredAccuracy")) {
            builder.setDesiredAccuracy(readableMap.getInt("desiredAccuracy"));
        }
        getAdapter().getCurrentPosition(builder.build());
    }

    @ReactMethod
    public void watchPosition(ReadableMap readableMap, Callback callback, final Callback callback2) {
        TSWatchPositionRequest.Builder builder = new TSWatchPositionRequest.Builder(getReactApplicationContext());
        builder.setCallback(new TSLocationCallback() {
            @Override
            public void onLocation(TSLocation tSLocation) {
                try {
                    RNBackgroundGeolocationModule.this.sendEvent(RNBackgroundGeolocationModule.EVENT_WATCHPOSITION, RNBackgroundGeolocationModule.jsonToMap(tSLocation.toJson()));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onError(Integer num) {
                callback2.invoke(num);
            }
        });
        if (readableMap.hasKey("interval")) {
            builder.setInterval(Long.valueOf(readableMap.getInt("interval")));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_EXTRAS)) {
            builder.setExtras(mapToJson(readableMap.getMap(TSGeofence.FIELD_EXTRAS)));
        }
        if (readableMap.hasKey("persist")) {
            builder.setPersist(readableMap.getBoolean("persist"));
        }
        if (readableMap.hasKey("desiredAccuracy")) {
            builder.setDesiredAccuracy(readableMap.getInt("desiredAccuracy"));
        }
        getAdapter().watchPosition(builder.build());
        callback.invoke(new Object[0]);
    }

    @ReactMethod
    public void stopWatchPosition(final Callback callback, final Callback callback2) {
        getAdapter().stopWatchPosition(new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void getOdometer(Callback callback, Callback callback2) {
        callback.invoke(getAdapter().getOdometer());
    }

    @ReactMethod
    public void setOdometer(Float f, final Callback callback, final Callback callback2) {
        getAdapter().setOdometer(f, new TSLocationCallback() {
            @Override
            public void onLocation(TSLocation tSLocation) {
                try {
                    callback.invoke(RNBackgroundGeolocationModule.jsonToMap(tSLocation.toJson()));
                } catch (JSONException e) {
                    callback2.invoke(e.getMessage());
                }
            }

            @Override
            public void onError(Integer num) {
                callback2.invoke(num);
            }
        });
    }

    @ReactMethod
    public void addGeofence(ReadableMap readableMap, final Callback callback, final Callback callback2) {
        try {
            getAdapter().addGeofence(buildGeofence(readableMap), new TSCallback() {
                @Override
                public void onSuccess() {
                    callback.invoke(new Object[0]);
                }

                @Override
                public void onFailure(String str) {
                    callback2.invoke(str);
                }
            });
        } catch (TSGeofence.Exception e) {
            callback2.invoke(e.getMessage());
        }
    }

    @ReactMethod
    public void addGeofences(ReadableArray readableArray, final Callback callback, final Callback callback2) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < readableArray.size(); i++) {
            try {
                arrayList.add(buildGeofence(readableArray.getMap(i)));
            } catch (TSGeofence.Exception e) {
                callback2.invoke(e.getMessage());
                return;
            }
        }
        getAdapter().addGeofences(arrayList, new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    private TSGeofence buildGeofence(ReadableMap readableMap) throws TSGeofence.Exception {
        TSGeofence.Builder builder = new TSGeofence.Builder();
        if (readableMap.hasKey(TSGeofence.FIELD_IDENTIFIER)) {
            builder.setIdentifier(readableMap.getString(TSGeofence.FIELD_IDENTIFIER));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_LATITUDE)) {
            builder.setLatitude(readableMap.getDouble(TSGeofence.FIELD_LATITUDE));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_LONGITUDE)) {
            builder.setLongitude(readableMap.getDouble(TSGeofence.FIELD_LONGITUDE));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_RADIUS)) {
            builder.setRadius((float) readableMap.getDouble(TSGeofence.FIELD_RADIUS));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_NOTIFY_ON_ENTRY)) {
            builder.setNotifyOnEntry(readableMap.getBoolean(TSGeofence.FIELD_NOTIFY_ON_ENTRY));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_NOTIFY_ON_EXIT)) {
            builder.setNotifyOnExit(readableMap.getBoolean(TSGeofence.FIELD_NOTIFY_ON_EXIT));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_NOTIFY_ON_DWELL)) {
            builder.setNotifyOnDwell(readableMap.getBoolean(TSGeofence.FIELD_NOTIFY_ON_DWELL));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_LOITERING_DELAY)) {
            builder.setLoiteringDelay(readableMap.getInt(TSGeofence.FIELD_LOITERING_DELAY));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_EXTRAS)) {
            builder.setExtras(mapToJson(readableMap.getMap(TSGeofence.FIELD_EXTRAS)));
        }
        if (readableMap.hasKey(TSGeofence.FIELD_VERTICES)) {
            ArrayList arrayList = new ArrayList();
            ReadableArray array = readableMap.getArray(TSGeofence.FIELD_VERTICES);
            if (array != null) {
                for (int i = 0; i < array.size(); i++) {
                    ReadableArray array2 = array.getArray(i);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(Double.valueOf(array2.getDouble(0)));
                    arrayList2.add(Double.valueOf(array2.getDouble(1)));
                    arrayList.add(arrayList2);
                }
                builder.setVertices(arrayList);
            }
        }
        return builder.build();
    }

    @ReactMethod
    public void removeGeofence(String str, final Callback callback, final Callback callback2) {
        getAdapter().removeGeofence(str, new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str2) {
                callback2.invoke(str2);
            }
        });
    }

    @ReactMethod
    public void removeGeofences(final Callback callback, final Callback callback2) {
        getAdapter().removeGeofences(new ArrayList(), new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void getGeofences(final Callback callback, final Callback callback2) {
        getAdapter().getGeofences(new TSGetGeofencesCallback() {
            @Override
            public void onSuccess(List<TSGeofence> list) {
                try {
                    WritableNativeArray writableNativeArray = new WritableNativeArray();
                    Iterator<TSGeofence> it = list.iterator();
                    while (it.hasNext()) {
                        writableNativeArray.pushMap(RNBackgroundGeolocationModule.jsonToMap(it.next().toJson()));
                    }
                    callback.invoke(writableNativeArray);
                } catch (JSONException e) {
                    e.printStackTrace();
                    callback2.invoke(e.getMessage());
                }
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void getGeofence(String str, final Callback callback, final Callback callback2) {
        getAdapter().getGeofence(str, new TSGetGeofenceCallback() {
            @Override
            public void onSuccess(TSGeofence tSGeofence) {
                try {
                    callback.invoke(RNBackgroundGeolocationModule.jsonToMap(tSGeofence.toJson()));
                } catch (JSONException e) {
                    e.printStackTrace();
                    callback2.invoke(e.getMessage());
                }
            }

            @Override
            public void onFailure(String str2) {
                callback2.invoke(str2);
            }
        });
    }

    @ReactMethod
    public void geofenceExists(String str, final Callback callback) {
        getAdapter().geofenceExists(str, new TSGeofenceExistsCallback() {
            @Override
            public void onResult(boolean z) {
                callback.invoke(Boolean.valueOf(z));
            }
        });
    }

    @ReactMethod
    public void beginBackgroundTask(final Callback callback, Callback callback2) {
        getAdapter().startBackgroundTask(new TSBackgroundTaskCallback() {
            @Override
            public void onCancel(int i) {
            }

            @Override
            public void onStart(int i) {
                callback.invoke(Integer.valueOf(i));
            }
        });
    }

    @ReactMethod
    public void finish(int i, Callback callback, Callback callback2) {
        getAdapter().stopBackgroundTask(i);
        callback.invoke(Integer.valueOf(i));
    }

    @ReactMethod
    public void finishHeadlessTask(int i, Callback callback, Callback callback2) {
        EventBus eventBus = EventBus.getDefault();
        if (!eventBus.hasSubscriberForEvent(HeadlessEvent.class)) {
            TSLog.error(TSLog.warn("finishHeadlessTask failed to find an EventBus subscriber for HeadlessEvent"));
            callback2.invoke("finishHeadlessTask failed to find an EventBus subscriber for HeadlessEvent");
        } else {
            eventBus.post(new FinishHeadlessTaskEvent(getReactApplicationContext(), i));
            callback.invoke(new Object[0]);
        }
    }

    @ReactMethod
    public void getTransistorToken(String str, String str2, String str3, final Callback callback, final Callback callback2) {
        TransistorAuthorizationToken.findOrCreate(getReactApplicationContext(), str, str2, str3, new TransistorAuthorizationToken.Callback() {
            @Override
            public void onSuccess(TransistorAuthorizationToken transistorAuthorizationToken) {
                try {
                    callback.invoke(RNBackgroundGeolocationModule.jsonToMap(transistorAuthorizationToken.toJson()));
                } catch (JSONException e) {
                    callback2.invoke(e.getMessage());
                }
            }

            @Override
            public void onFailure(String str4) {
                WritableNativeMap writableNativeMap = new WritableNativeMap();
                writableNativeMap.putString("status", str4);
                writableNativeMap.putString("message", str4);
                callback2.invoke(writableNativeMap);
            }
        });
    }

    @ReactMethod
    public void destroyTransistorToken(String str, final Callback callback, final Callback callback2) {
        TransistorAuthorizationToken.destroyTokenForUrl(getReactApplicationContext(), str, new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(true);
            }

            @Override
            public void onFailure(String str2) {
                callback2.invoke(str2);
            }
        });
    }

    @ReactMethod
    public void playSound(String str) {
        getAdapter().startTone(str);
    }

    @ReactMethod
    public void getLog(ReadableMap readableMap, final Callback callback, final Callback callback2) {
        TSLog.getLog(parseSQLQuery(readableMap), new TSGetLogCallback() {
            @Override
            public void onSuccess(String str) {
                callback.invoke(str);
            }

            @Override
            public void onFailure(String str) {
                callback2.invoke(str);
            }
        });
    }

    @ReactMethod
    public void emailLog(String str, ReadableMap readableMap, final Callback callback, final Callback callback2) {
        TSLog.emailLog(getCurrentActivity(), str, parseSQLQuery(readableMap), new TSEmailLogCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str2) {
                callback2.invoke(str2);
            }
        });
    }

    @ReactMethod
    public void uploadLog(String str, ReadableMap readableMap, final Callback callback, final Callback callback2) {
        TSLog.uploadLog(getReactApplicationContext(), str, parseSQLQuery(readableMap), new TSCallback() {
            @Override
            public void onSuccess() {
                callback.invoke(new Object[0]);
            }

            @Override
            public void onFailure(String str2) {
                callback2.invoke(str2);
            }
        });
    }

    @ReactMethod
    public void log(String str, String str2) throws JSONException {
        TSLog.log(str, str2);
    }

    private SQLQuery parseSQLQuery(ReadableMap readableMap) {
        SQLQuery sQLQueryCreate = SQLQuery.create();
        if (readableMap.hasKey("start")) {
            sQLQueryCreate.setStart(Double.valueOf(readableMap.getDouble("start")).longValue());
        }
        if (readableMap.hasKey(ViewProps.END)) {
            sQLQueryCreate.setEnd(Double.valueOf(readableMap.getDouble(ViewProps.END)).longValue());
        }
        if (readableMap.hasKey("order")) {
            sQLQueryCreate.setOrder(readableMap.getInt("order"));
        }
        if (readableMap.hasKey(MapboxMap.QFE_LIMIT)) {
            sQLQueryCreate.setLimit(readableMap.getInt(MapboxMap.QFE_LIMIT));
        }
        return sQLQueryCreate;
    }

    @ReactMethod
    public void getSensors(Callback callback, Callback callback2) {
        Sensors sensors = Sensors.getInstance(getReactApplicationContext());
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString("platform", "android");
        writableNativeMap.putBoolean("accelerometer", sensors.hasAccelerometer());
        writableNativeMap.putBoolean("magnetometer", sensors.hasMagnetometer());
        writableNativeMap.putBoolean("gyroscope", sensors.hasGyroscope());
        writableNativeMap.putBoolean("significant_motion", sensors.hasSignificantMotion());
        callback.invoke(writableNativeMap);
    }

    @ReactMethod
    public void getDeviceInfo(Callback callback, Callback callback2) {
        DeviceInfo deviceInfo = DeviceInfo.getInstance(getReactApplicationContext());
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString("manufacturer", deviceInfo.getManufacturer());
        writableNativeMap.putString(ModelSourceWrapper.TYPE, deviceInfo.getModel());
        writableNativeMap.putString("version", deviceInfo.getVersion());
        writableNativeMap.putString("platform", deviceInfo.getPlatform());
        writableNativeMap.putString("framework", "react-native");
        callback.invoke(writableNativeMap);
    }

    @ReactMethod
    public void isPowerSaveMode(Callback callback, Callback callback2) {
        callback.invoke(getAdapter().isPowerSaveMode());
    }

    @ReactMethod
    public void isIgnoringBatteryOptimizations(Callback callback, Callback callback2) {
        callback.invoke(Boolean.valueOf(getAdapter().isIgnoringBatteryOptimizations().booleanValue()));
    }

    @ReactMethod
    public void requestSettings(ReadableMap readableMap, Callback callback, Callback callback2) throws JSONException {
        String string = readableMap.getString(TSScheduleManager.ACTION_NAME);
        DeviceSettingsRequest deviceSettingsRequestRequestSettings = getAdapter().requestSettings(string);
        if (deviceSettingsRequestRequestSettings != null) {
            callback.invoke(jsonToMap(deviceSettingsRequestRequestSettings.toJson()));
        } else {
            callback2.invoke("Failed to find " + string + " screen for device " + Build.MANUFACTURER + " " + Build.MODEL + "@" + Build.VERSION.RELEASE);
        }
    }

    @ReactMethod
    public void showSettings(ReadableMap readableMap, Callback callback, Callback callback2) {
        String string = readableMap.getString(TSScheduleManager.ACTION_NAME);
        if (getAdapter().showSettings(string)) {
            callback.invoke(new Object[0]);
        } else {
            callback2.invoke("Failed to find " + string + " screen for device " + Build.MANUFACTURER + " " + Build.MODEL + "@" + Build.VERSION.RELEASE);
        }
    }

    @ReactMethod
    public void getProviderState(Callback callback, Callback callback2) {
        try {
            callback.invoke(jsonToMap(getAdapter().getProviderState().toJson()));
        } catch (JSONException e) {
            callback2.invoke(e.getMessage());
        }
    }

    @ReactMethod
    public void requestPermission(final Callback callback, Callback callback2) {
        getAdapter().requestPermission(new TSRequestPermissionCallback() {
            @Override
            public void onSuccess(int i) {
                callback.invoke(Integer.valueOf(i));
            }

            @Override
            public void onFailure(int i) {
                callback.invoke(Integer.valueOf(i));
            }
        });
    }

    @ReactMethod
    public void requestTemporaryFullAccuracy(String str, final Callback callback, Callback callback2) {
        getAdapter().requestTemporaryFullAccuracy(str, new TSRequestPermissionCallback() {
            @Override
            public void onSuccess(int i) {
                callback.invoke(Integer.valueOf(i));
            }

            @Override
            public void onFailure(int i) {
                callback.invoke(Integer.valueOf(i));
            }
        });
    }

    private void removeAllListeners() {
        synchronized (this.mListeners) {
            this.mListeners.clear();
        }
        getAdapter().removeListeners();
    }

    public void onLocationError(Integer num) {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putInt("error", num.intValue());
        sendEvent("location", writableNativeMap);
    }

    public void handlePlayServicesConnectError(Integer num) {
        if (getCurrentActivity() == null) {
            return;
        }
        GoogleApiAvailability.getInstance().getErrorDialog(getCurrentActivity(), num.intValue(), 1001).show();
    }

    public void sendEvent(String str, WritableMap writableMap) {
        ((RCTNativeAppEventEmitter) getReactApplicationContext().getJSModule(RCTNativeAppEventEmitter.class)).emit(str, writableMap);
    }

    public void sendEvent(String str, String str2) {
        ((RCTNativeAppEventEmitter) getReactApplicationContext().getJSModule(RCTNativeAppEventEmitter.class)).emit(str, str2);
    }

    public void sendEvent(String str, Boolean bool) {
        ((RCTNativeAppEventEmitter) getReactApplicationContext().getJSModule(RCTNativeAppEventEmitter.class)).emit(str, bool);
    }

    public static WritableMap jsonToMap(JSONObject jSONObject) throws JSONException {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONObject) {
                    writableNativeMap.putMap(next, jsonToMap((JSONObject) obj));
                } else if (obj instanceof JSONArray) {
                    writableNativeMap.putArray(next, convertJsonToArray((JSONArray) obj));
                } else if (obj instanceof Boolean) {
                    writableNativeMap.putBoolean(next, ((Boolean) obj).booleanValue());
                } else if (obj instanceof Integer) {
                    writableNativeMap.putInt(next, ((Integer) obj).intValue());
                } else if (obj instanceof Long) {
                    writableNativeMap.putDouble(next, ((Long) obj).doubleValue());
                } else if (obj instanceof Double) {
                    writableNativeMap.putDouble(next, ((Double) obj).doubleValue());
                } else if (obj instanceof Float) {
                    writableNativeMap.putDouble(next, ((Float) obj).doubleValue());
                } else if (obj instanceof String) {
                    writableNativeMap.putString(next, (String) obj);
                } else {
                    writableNativeMap.putString(next, obj.toString());
                }
            }
        }
        return writableNativeMap;
    }

    public static WritableArray convertJsonToArray(JSONArray jSONArray) throws JSONException {
        WritableNativeArray writableNativeArray = new WritableNativeArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONObject) {
                writableNativeArray.pushMap(jsonToMap((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                writableNativeArray.pushArray(convertJsonToArray((JSONArray) obj));
            } else if (obj instanceof Boolean) {
                writableNativeArray.pushBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                writableNativeArray.pushInt(((Integer) obj).intValue());
            } else if (obj instanceof Double) {
                writableNativeArray.pushDouble(((Double) obj).doubleValue());
            } else if (obj instanceof String) {
                writableNativeArray.pushString((String) obj);
            } else {
                writableNativeArray.pushString(obj.toString());
            }
        }
        return writableNativeArray;
    }

    public static JSONObject mapToJson(ReadableMap readableMap) {
        ReadableMapKeySetIterator readableMapKeySetIteratorKeySetIterator = readableMap.keySetIterator();
        JSONObject jSONObject = new JSONObject();
        while (readableMapKeySetIteratorKeySetIterator.hasNextKey()) {
            try {
                String strNextKey = readableMapKeySetIteratorKeySetIterator.nextKey();
                int i = AnonymousClass33.$SwitchMap$com$facebook$react$bridge$ReadableType[readableMap.getType(strNextKey).ordinal()];
                if (i == 1) {
                    jSONObject.put(strNextKey, readableMap.getString(strNextKey));
                } else if (i == 2) {
                    jSONObject.put(strNextKey, readableMap.getBoolean(strNextKey));
                } else if (i == 3) {
                    jSONObject.put(strNextKey, readableMap.getDouble(strNextKey));
                } else if (i == 4) {
                    jSONObject.put(strNextKey, mapToJson(readableMap.getMap(strNextKey)));
                } else if (i == 5) {
                    jSONObject.put(strNextKey, arrayToJson(readableMap.getArray(strNextKey)));
                }
            } catch (JSONException e) {
                e.printStackTrace();
                return jSONObject;
            }
        }
        return jSONObject;
    }

    static class AnonymousClass33 {
        static final int[] $SwitchMap$com$facebook$react$bridge$ReadableType;

        static {
            int[] iArr = new int[ReadableType.values().length];
            $SwitchMap$com$facebook$react$bridge$ReadableType = iArr;
            try {
                iArr[ReadableType.String.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Boolean.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Number.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Map.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Array.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Null.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static JSONArray arrayToJson(ReadableArray readableArray) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < readableArray.size(); i++) {
            switch (AnonymousClass33.$SwitchMap$com$facebook$react$bridge$ReadableType[readableArray.getType(i).ordinal()]) {
                case 1:
                    jSONArray.put(readableArray.getString(i));
                    break;
                case 2:
                    jSONArray.put(readableArray.getBoolean(i));
                    break;
                case 3:
                    jSONArray.put(readableArray.getDouble(i));
                    break;
                case 4:
                    jSONArray.put(mapToJson(readableArray.getMap(i)));
                    break;
                case 5:
                    jSONArray.put(arrayToJson(readableArray.getArray(i)));
                    break;
                case 6:
                    jSONArray.put(JSONObject.NULL);
                    break;
            }
        }
        return jSONArray;
    }

    private void initializeLocationManager() {
        Activity currentActivity = getCurrentActivity();
        if (currentActivity == null) {
            return;
        }
        BackgroundGeolocation adapter = getAdapter();
        adapter.setActivity(currentActivity);
        adapter.onPlayServicesConnectError(new TSPlayServicesConnectErrorCallback() {
            @Override
            public void onPlayServicesConnectError(int i) {
                RNBackgroundGeolocationModule.this.handlePlayServicesConnectError(Integer.valueOf(i));
            }
        });
        this.mInitialized = true;
    }

    private ReadableMap setHeadlessJobService(ReadableMap readableMap) {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.merge(readableMap);
        writableNativeMap.putString("headlessJobService", getClass().getPackage().getName() + ".HeadlessTask");
        return writableNativeMap;
    }

    public WritableMap getState() {
        try {
            return jsonToMap(TSConfig.getInstance(getReactApplicationContext()).toJson());
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private BackgroundGeolocation getAdapter() {
        return BackgroundGeolocation.getInstance(getReactApplicationContext());
    }

    @Override
    public void onCatalystInstanceDestroy() {
        this.mInitialized = false;
        removeAllListeners();
    }
}
