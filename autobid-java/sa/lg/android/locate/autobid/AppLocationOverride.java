package sa.lg.android.locate.autobid;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;

import org.json.JSONObject;

import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/** Manual location for this app's background bridge, Mapbox puck and distance filter. */
public final class AppLocationOverride {
    private static final String MANUAL = "locatego_manual";
    private static volatile Context applicationContext;
    private static WeakReference<Object> backgroundModule = new WeakReference<>(null);
    private static WeakReference<Object> mapManager = new WeakReference<>(null);
    private static volatile Location lastRealAndroidLocation;
    private static volatile Object lastRealMapboxLocation;
    private static volatile JSONObject lastLocationPayload;
    private static final CopyOnWriteArrayList<WeakReference<Object>> puckConsumers = new CopyOnWriteArrayList<>();
    private static final ThreadLocal<Boolean> pushingPuck = new ThreadLocal<>();
    private static volatile Object lastRealPuckPoints;

    private AppLocationOverride() {}

    public static void initialize(Context context) {
        if (context != null) {
            applicationContext = context.getApplicationContext();
        }
    }

    private static AutoBidPreferences preferences() {
        Context context = applicationContext;
        return context == null ? null : new AutoBidPreferences(context);
    }

    public static Location selectedLocation() {
        AutoBidPreferences settings = preferences();
        if (settings == null || !settings.hasPickedLocation()) {
            return null;
        }
        Location location = lastRealAndroidLocation == null
                ? new Location(MANUAL) : new Location(lastRealAndroidLocation);
        location.setProvider(MANUAL);
        location.setLatitude(settings.pickedLatitude());
        location.setLongitude(settings.pickedLongitude());
        location.setTime(System.currentTimeMillis());
        location.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
        if (!location.hasAccuracy()) location.setAccuracy(50f);
        location.setSpeed(0f);
        location.setBearing(0f);
        Bundle extras = location.getExtras() == null ? new Bundle() : new Bundle(location.getExtras());
        extras.putBoolean(MANUAL, true);
        location.setExtras(extras);
        return location;
    }

    /** Called before a live TSLocation is constructed, before persistence and HTTP serialization. */
    public static Location androidLocation(Context context, Location actual) {
        initialize(context);
        if (actual != null && !MANUAL.equals(actual.getProvider())) {
            lastRealAndroidLocation = new Location(actual);
        }
        Location selected = selectedLocation();
        return selected != null ? selected : actual;
    }

    /** Also covers an in-flight JS callback created before the selection changed. */
    public static JSONObject jsonLocation(JSONObject actual) {
        if (actual == null || actual.optJSONObject("coords") == null) return actual;
        try {
            lastLocationPayload = new JSONObject(actual.toString());
            Location selected = selectedLocation();
            if (selected == null) return actual;
            JSONObject result = new JSONObject(actual.toString());
            setCoordinates(result, selected, true);
            return result;
        } catch (Exception error) {
            Log.w("LOCATION_PICKER", "Could not adapt a location payload", error);
            return actual;
        }
    }

    private static void setCoordinates(JSONObject payload, Location location, boolean manual) throws Exception {
        JSONObject coords = payload.optJSONObject("coords");
        if (coords == null) coords = new JSONObject();
        coords.put("latitude", location.getLatitude());
        coords.put("longitude", location.getLongitude());
        coords.put("accuracy", location.hasAccuracy() ? location.getAccuracy() : 50);
        coords.put("speed", location.hasSpeed() ? location.getSpeed() : 0);
        coords.put("heading", location.hasBearing() ? location.getBearing() : 0);
        payload.put("coords", coords);
        SimpleDateFormat timestamp = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        timestamp.setTimeZone(TimeZone.getTimeZone("UTC"));
        payload.put("timestamp", timestamp.format(new Date(location.getTime())));
        payload.put("age", 0);
        JSONObject extras = payload.optJSONObject("extras");
        if (extras == null) extras = new JSONObject();
        if (manual) extras.put(MANUAL, true);
        else extras.remove(MANUAL);
        payload.put("extras", extras);
    }

    private static JSONObject payload(Location location, boolean manual) throws Exception {
        JSONObject previous = lastLocationPayload;
        JSONObject result = previous == null ? new JSONObject() : new JSONObject(previous.toString());
        result.put("uuid", UUID.randomUUID().toString());
        result.put("is_moving", false);
        if (!result.has("odometer")) result.put("odometer", 0);
        if (!result.has("activity")) result.put("activity", new JSONObject().put("type", "unknown").put("confidence", 0));
        setCoordinates(result, location, manual);
        return result;
    }

    /** The app uses Mapbox common Location, independently of the background location plugin. */
    public static Object mapboxLocation(Object actual) {
        try {
            boolean manual = actual != null && MANUAL.equals(actual.getClass().getMethod("getSource").invoke(actual));
            if (actual != null && !manual) lastRealMapboxLocation = actual;
            Location selected = selectedLocation();
            if (selected == null) return manual ? lastRealMapboxLocation : actual;
            Object template = manual ? lastRealMapboxLocation : actual;
            Class<?> builderClass = Class.forName("com.mapbox.common.location.Location$Builder");
            Object builder = template == null ? builderClass.getConstructor().newInstance()
                    : template.getClass().getMethod("toBuilder").invoke(template);
            builderClass.getMethod("latitude", double.class).invoke(builder, selected.getLatitude());
            builderClass.getMethod("longitude", double.class).invoke(builder, selected.getLongitude());
            builderClass.getMethod("timestamp", long.class).invoke(builder, selected.getTime());
            builderClass.getMethod("monotonicTimestamp", Long.class).invoke(builder, Long.valueOf(selected.getElapsedRealtimeNanos()));
            builderClass.getMethod("source", String.class).invoke(builder, MANUAL);
            builderClass.getMethod("horizontalAccuracy", Double.class).invoke(builder, Double.valueOf(selected.getAccuracy()));
            builderClass.getMethod("speed", Double.class).invoke(builder, Double.valueOf(0));
            builderClass.getMethod("bearing", Double.class).invoke(builder, Double.valueOf(0));
            return builderClass.getMethod("build").invoke(builder);
        } catch (Exception error) {
            Log.w("LOCATION_PICKER", "Could not adapt Mapbox location", error);
            return actual;
        }
    }

    public static void registerBackgroundModule(Object module, Context context) {
        initialize(context);
        backgroundModule = new WeakReference<>(module);
        new Handler(Looper.getMainLooper()).postDelayed(() -> {
            if (selectedLocation() != null) deliverSelection();
        }, 1500);
    }

    public static void registerMapManager(Object manager, Context context) {
        initialize(context);
        mapManager = new WeakReference<>(manager);
        new Handler(Looper.getMainLooper()).postDelayed(() -> {
            if (selectedLocation() != null) deliverSelection();
        }, 1500);
    }

    public static void registerPuck(Object consumer) {
        for (WeakReference<Object> reference : puckConsumers) {
            Object existing = reference.get();
            if (existing == consumer) return;
            if (existing == null) puckConsumers.remove(reference);
        }
        puckConsumers.add(new WeakReference<>(consumer));
        new Handler(Looper.getMainLooper()).postDelayed(() -> {
            if (selectedLocation() != null) deliverPucks();
        }, 1500);
    }

    /** Mapbox's default puck provider bypasses the React Native LocationEngineResult. */
    public static Object puckLocation(Object consumer, Object actual) {
        registerPuck(consumer);
        Location selected = selectedLocation();
        try {
            if (actual != null && !Boolean.TRUE.equals(pushingPuck.get()) && Array.getLength(actual) > 0) {
                Object point = Array.get(actual, Array.getLength(actual) - 1);
                double lat = (Double) point.getClass().getMethod("latitude").invoke(point);
                double lng = (Double) point.getClass().getMethod("longitude").invoke(point);
                if (selected == null || lat != selected.getLatitude() || lng != selected.getLongitude()) {
                    lastRealPuckPoints = actual;
                }
            }
            return selected == null ? actual : puckPoints(selected);
        } catch (Exception error) {
            Log.w("LOCATION_PICKER", "Could not adapt map puck coordinates", error);
            return actual;
        }
    }

    private static Object puckPoints(Location location) throws Exception {
        Class<?> pointClass = Class.forName("com.mapbox.geojson.Point");
        Object point = pointClass.getMethod("fromLngLat", double.class, double.class)
                .invoke(null, location.getLongitude(), location.getLatitude());
        Object points = Array.newInstance(pointClass, 1);
        Array.set(points, 0, point);
        return points;
    }

    private static void deliverPucks() {
        Location selected = selectedLocation();
        try {
            Object points = selected == null ? lastRealPuckPoints : puckPoints(selected);
            if (points == null) return;
            Class<?> animation = Class.forName("kotlin.jvm.functions.Function1");
            pushingPuck.set(true);
            for (WeakReference<Object> reference : puckConsumers) {
                Object consumer = reference.get();
                if (consumer == null) {
                    puckConsumers.remove(reference);
                    continue;
                }
                consumer.getClass().getMethod("onLocationUpdated", points.getClass(), animation)
                        .invoke(consumer, points, null);
            }
        } catch (Exception error) {
            Log.w("LOCATION_PICKER", "Could not refresh native map puck", error);
        } finally {
            pushingPuck.remove();
        }
    }

    private static Object writable(Object module, JSONObject data) throws Exception {
        return module.getClass().getMethod("jsonToMap", JSONObject.class).invoke(null, data);
    }

    private static void sendLocation(Object module, Object data) throws Exception {
        Class<?> mapClass = Class.forName("com.facebook.react.bridge.WritableMap");
        Method send = module.getClass().getDeclaredMethod("sendEvent", String.class, mapClass);
        send.setAccessible(true);
        send.invoke(module, "location", data);
    }

    /** Fast current-position callback: a selected point does not wait for a fresh hardware fix. */
    public static boolean currentPosition(Object module, Object success) {
        Location selected = selectedLocation();
        if (selected == null) return false;
        try {
            Object data = writable(module, payload(selected, true));
            Class<?> callback = Class.forName("com.facebook.react.bridge.Callback");
            callback.getMethod("invoke", Object[].class).invoke(success, new Object[]{new Object[]{data}});
            return true;
        } catch (Exception error) {
            Log.w("LOCATION_PICKER", "Could not deliver current position", error);
            return false;
        }
    }

    public static void selectionChanged(Context context) {
        initialize(context);
        new Handler(Looper.getMainLooper()).post(() -> {
            deliverSelection();
            if (selectedLocation() == null) requestRealPosition();
        });
    }

    private static void deliverSelection() {
        Location selected = selectedLocation();
        Object module = backgroundModule.get();
        Location background = selected != null ? selected : lastRealAndroidLocation;
        if (module != null && background != null) {
            try {
                sendLocation(module, writable(module, payload(background, selected != null)));
            } catch (Exception error) {
                Log.w("LOCATION_PICKER", "Could not refresh app location", error);
            }
        }
        Object manager = mapManager.get();
        Object mapLocation = selected != null ? mapboxLocation(lastRealMapboxLocation) : lastRealMapboxLocation;
        if (manager != null && mapLocation != null) {
            try {
                Class<?> locationClass = Class.forName("com.mapbox.common.location.Location");
                Class<?> resultClass = Class.forName("com.rnmapbox.rnmbx.v11compat.location.LocationEngineResult");
                Object result = resultClass.getConstructor(locationClass).newInstance(mapLocation);
                manager.getClass().getMethod("onSuccess", resultClass).invoke(manager, result);
            } catch (Exception error) {
                Log.w("LOCATION_PICKER", "Could not refresh map position", error);
            }
        }
        deliverPucks();
    }

    private static void requestRealPosition() {
        Object module = backgroundModule.get();
        if (module == null) return;
        try {
            Class<?> callback = Class.forName("com.facebook.react.bridge.Callback");
            Object success = Proxy.newProxyInstance(callback.getClassLoader(), new Class<?>[]{callback}, (proxy, method, args) -> {
                if ("invoke".equals(method.getName()) && selectedLocation() == null) {
                    Object[] values = (Object[]) args[0];
                    if (values.length > 0) sendLocation(module, values[0]);
                }
                return null;
            });
            Object failure = Proxy.newProxyInstance(callback.getClassLoader(), new Class<?>[]{callback}, (proxy, method, args) -> null);
            JSONObject options = new JSONObject().put("samples", 1).put("persist", false).put("maximumAge", 0).put("timeout", 15);
            module.getClass().getMethod("getCurrentPosition", Class.forName("com.facebook.react.bridge.ReadableMap"), callback, callback)
                    .invoke(module, writable(module, options), success, failure);
        } catch (Exception error) {
            Log.w("LOCATION_PICKER", "Waiting for the next real GPS update", error);
        }
    }
}
