package com.rnmapbox.rnmbx.modules;

import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.core.RCTNativeAppEventEmitter;
import com.mapbox.common.location.Location;
import com.microsoft.codepush.react.CodePushConstants;
import com.rnmapbox.rnmbx.NativeRNMBXLocationModuleSpec;
import com.rnmapbox.rnmbx.events.EventEmitter;
import com.rnmapbox.rnmbx.events.LocationEvent;
import com.rnmapbox.rnmbx.location.LocationManager;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngineCallback;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngineResult;
import com.rnmapbox.rnmbx.v11compat.location.LocationKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "RNMBXLocationModule")
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\b\u0007\u0018\u0000 12\u00020\u0001:\u00011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0017J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001aH\u0017J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u0007H\u0017J\b\u0010\u001f\u001a\u00020\u0018H\u0017J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"H\u0017J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u001aH\u0016J\u0012\u0010&\u001a\u00020\u00182\b\u0010'\u001a\u0004\u0018\u00010\u0016H\u0007J\u0017\u0010(\u001a\u00020\u00182\b\u0010)\u001a\u0004\u0018\u00010*H\u0007¢\u0006\u0002\u0010+J\b\u0010,\u001a\u00020\u0018H\u0002J\b\u0010-\u001a\u00020\u0018H\u0002J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u00020\u001aH\u0017J\u0006\u00100\u001a\u00020\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXLocationModule;", "Lcom/rnmapbox/rnmbx/NativeRNMBXLocationModuleSpec;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "isEnabled", "", "mMinDisplacement", "", "locationManager", "Lcom/rnmapbox/rnmbx/location/LocationManager;", "mLastLocation", "Lcom/mapbox/common/location/Location;", "Lcom/rnmapbox/rnmbx/v11compat/location/Location;", "locationEventThrottle", "Lcom/rnmapbox/rnmbx/modules/LocationEventThrottle;", "lifecycleEventListener", "Lcom/facebook/react/bridge/LifecycleEventListener;", "onUserLocationChangeCallback", "Lcom/rnmapbox/rnmbx/location/LocationManager$OnUserLocationChange;", "getName", "", "start", "", "minDisplacement", "", "setMinDisplacement", "value", "setRequestsAlwaysUse", "requestsAlwaysUse", "stop", "getLastKnownLocation", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "simulateHeading", "changesPerSecond", "increment", "addListener", "eventName", "removeListeners", CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, "", "(Ljava/lang/Integer;)V", "startLocationManager", "stopLocationManager", "setLocationEventThrottle", "throttleValue", "shouldSendLocationEvent", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXLocationModule extends NativeRNMBXLocationModuleSpec {
    public static final String LOCATION_UPDATE = "MapboxUserLocationUpdate";
    public static final String REACT_CLASS = "RNMBXLocationModule";
    private boolean isEnabled;
    private final LifecycleEventListener lifecycleEventListener;
    private LocationEventThrottle locationEventThrottle;
    private final LocationManager locationManager;
    private Location mLastLocation;
    private float mMinDisplacement;
    private final LocationManager.OnUserLocationChange onUserLocationChangeCallback;

    @ReactMethod
    public final void addListener(String eventName) {
    }

    @ReactMethod
    public final void removeListeners(Integer count) {
    }

    @Override
    @ReactMethod
    public void setRequestsAlwaysUse(boolean requestsAlwaysUse) {
    }

    @Override
    public void simulateHeading(double changesPerSecond, double increment) {
    }

    public RNMBXLocationModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.locationManager = LocationManager.INSTANCE.getInstance(reactContext);
        this.locationEventThrottle = new LocationEventThrottle(null, null, 3, null);
        LifecycleEventListener lifecycleEventListener = new LifecycleEventListener() {
            @Override
            public void onHostResume() {
                LocationManager locationManager;
                if (!this.this$0.isEnabled || (locationManager = this.this$0.locationManager) == null) {
                    return;
                }
                locationManager.resume();
            }

            @Override
            public void onHostPause() {
                LocationManager locationManager = this.this$0.locationManager;
                if (locationManager != null) {
                    locationManager.pause();
                }
            }

            @Override
            public void onHostDestroy() {
                LocationManager locationManager = this.this$0.locationManager;
                if (locationManager != null) {
                    locationManager.destroy();
                }
            }
        };
        this.lifecycleEventListener = lifecycleEventListener;
        this.onUserLocationChangeCallback = new LocationManager.OnUserLocationChange() {
            @Override
            public void onLocationChange(Location location) {
                boolean z = true;
                boolean z2 = (this.this$0.mLastLocation != null) != (location != null);
                Location location2 = this.this$0.mLastLocation;
                if (location2 == null || location == null || (location2.getLatitude() == location.getLatitude() && location2.getLongitude() == location.getLongitude() && Intrinsics.areEqual(location2.getAltitude(), location.getAltitude()) && LocationKt.getAccuracy(location2) == LocationKt.getAccuracy(location) && Intrinsics.areEqual(location2.getBearing(), location.getBearing()))) {
                    z = z2;
                }
                this.this$0.mLastLocation = location;
                if (z && location != null && this.this$0.shouldSendLocationEvent()) {
                    LocationEvent locationEvent = new LocationEvent(location);
                    if (this.this$0.mEventEmitterCallback != null) {
                        this.this$0.emitOnLocationUpdate(locationEvent.toJSON());
                        return;
                    }
                    RCTNativeAppEventEmitter moduleEmitter = EventEmitter.getModuleEmitter(this.this$0.getReactApplicationContext());
                    if (moduleEmitter != null) {
                        moduleEmitter.emit(RNMBXLocationModule.LOCATION_UPDATE, locationEvent.getPayload());
                    }
                }
            }
        };
        reactContext.addLifecycleEventListener(lifecycleEventListener);
    }

    @Override
    public String getName() {
        return "RNMBXLocationModule";
    }

    @Override
    @ReactMethod
    public void start(double minDisplacement) {
        this.isEnabled = true;
        this.mMinDisplacement = (float) minDisplacement;
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            locationManager.startCounted();
        }
        startLocationManager();
    }

    @Override
    @ReactMethod
    public void setMinDisplacement(double value) {
        float f = (float) value;
        if (this.mMinDisplacement == f) {
            return;
        }
        this.mMinDisplacement = f;
        if (this.isEnabled) {
            LocationManager locationManager = this.locationManager;
            Intrinsics.checkNotNull(locationManager);
            locationManager.setMinDisplacement(this.mMinDisplacement);
        }
    }

    @Override
    @ReactMethod
    public void stop() {
        stopLocationManager();
    }

    @Override
    @ReactMethod
    public void getLastKnownLocation(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        LocationManager locationManager = this.locationManager;
        Intrinsics.checkNotNull(locationManager);
        locationManager.getLastKnownLocation(new LocationEngineCallback() {
            @Override
            public void onSuccess(LocationEngineResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                Location lastLocation = result.getLastLocation();
                if (lastLocation != null) {
                    promise.resolve(new LocationEvent(lastLocation).getPayload());
                } else {
                    promise.resolve(null);
                }
            }

            @Override
            public void onFailure(Exception exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                promise.reject(exception);
            }
        });
    }

    private final void startLocationManager() {
        this.mLastLocation = null;
        LocationManager locationManager = this.locationManager;
        Intrinsics.checkNotNull(locationManager);
        locationManager.addLocationListener(this.onUserLocationChangeCallback);
        this.locationManager.setMinDisplacement(this.mMinDisplacement);
        this.locationManager.startCounted();
    }

    private final void stopLocationManager() {
        if (this.isEnabled) {
            LocationManager locationManager = this.locationManager;
            Intrinsics.checkNotNull(locationManager);
            locationManager.removeLocationListener(this.onUserLocationChangeCallback);
            this.locationManager.stopCounted();
            this.isEnabled = false;
            this.mLastLocation = null;
        }
    }

    @Override
    @ReactMethod
    public void setLocationEventThrottle(double throttleValue) {
        if (throttleValue > 0.0d) {
            this.locationEventThrottle.setWaitBetweenEvents(Double.valueOf(throttleValue));
        } else {
            this.locationEventThrottle.setWaitBetweenEvents(null);
        }
    }

    public final boolean shouldSendLocationEvent() {
        Double waitBetweenEvents = this.locationEventThrottle.getWaitBetweenEvents();
        if (waitBetweenEvents == null) {
            return true;
        }
        long jNanoTime = System.nanoTime();
        Long lastSentTimestamp = this.locationEventThrottle.getLastSentTimestamp();
        return lastSentTimestamp == null || ((double) (jNanoTime - lastSentTimestamp.longValue())) > waitBetweenEvents.doubleValue() * 1000.0d;
    }
}
