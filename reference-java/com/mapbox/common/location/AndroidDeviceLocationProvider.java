package com.mapbox.common.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.core.location.LocationCompat;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.Cancelable;
import com.mapbox.common.MapboxCommonLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

@Metadata(d1 = {"\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\n\b\u0000\u0018\u0000 12\u00020\u0001:\u000212B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0015J\b\u0010\u001e\u001a\u00020\u001cH\u0015J\b\u0010\u001f\u001a\u00020 H\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0017J\n\u0010*\u001a\u0004\u0018\u00010\u0007H\u0007J\n\u0010+\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020.H\u0017J\b\u00100\u001a\u00020\u0007H\u0016R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u00020\u00158\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/mapbox/common/location/AndroidDeviceLocationProvider;", "Lcom/mapbox/common/location/BaseDeviceLocationProvider;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "request", "Lcom/mapbox/common/location/LocationProviderRequest;", "locationProviderName", "", "(Landroid/content/Context;Lcom/mapbox/common/location/LocationProviderRequest;Ljava/lang/String;)V", "locationListener", "com/mapbox/common/location/AndroidDeviceLocationProvider$locationListener$1", "Lcom/mapbox/common/location/AndroidDeviceLocationProvider$locationListener$1;", "locationManager", "Landroid/location/LocationManager;", "getLocationManager", "()Landroid/location/LocationManager;", "locationManager$delegate", "Lkotlin/Lazy;", "locationManagerHandlerThread", "Landroid/os/HandlerThread;", "persistentId", "", "getPersistentId$annotations", "()V", "getPersistentId", "()I", "providerName", "createLocationManagerWithHandlerThread", "", "doStart", "doStop", "extractAttributesFromRequest", "Lcom/mapbox/common/location/AndroidDeviceLocationProvider$LocationRequestAttributes;", "extractResult", "", "Lcom/mapbox/common/location/Location;", "intent", "Landroid/content/Intent;", "getLastLocation", "Lcom/mapbox/common/Cancelable;", "callback", "Lcom/mapbox/common/location/GetLocationCallback;", "getLocationProviderName", "getName", "removeLocationUpdates", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/app/PendingIntent;", "requestLocationUpdates", "toString", "Companion", "LocationRequestAttributes", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AndroidDeviceLocationProvider extends BaseDeviceLocationProvider {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "AndroidDeviceLocationProvider";
    private final AndroidDeviceLocationProvider$locationListener$1 locationListener;

    private final Lazy locationManager;
    private HandlerThread locationManagerHandlerThread;
    private final String locationProviderName;
    private final int persistentId;
    private final String providerName;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;
        public static final int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[PermissionStatus.values().length];
            try {
                iArr[PermissionStatus.FOREGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PermissionStatus.GRANTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PermissionStatus.BACKGROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BaseDeviceLocationProvider.DeviceLocationProviderMode.values().length];
            try {
                iArr2[BaseDeviceLocationProvider.DeviceLocationProviderMode.CALLBACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[BaseDeviceLocationProvider.DeviceLocationProviderMode.PENDING_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BaseDeviceLocationProvider.DeviceLocationProviderMode.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static void getPersistentId$annotations() {
    }

    public AndroidDeviceLocationProvider(final Context context, LocationProviderRequest locationProviderRequest, String str) {
        super(context, locationProviderRequest);
        Intrinsics.checkNotNullParameter(context, "context");
        this.locationProviderName = str;
        if (str == null) {
            str = null;
            if ((locationProviderRequest != null ? locationProviderRequest.getAccuracy() : null) == AccuracyLevel.PASSIVE) {
                str = "passive";
            }
        }
        this.providerName = str;
        this.locationManager = LazyKt.lazy(new Function0<LocationManager>() {
            {
                super(0);
            }

            @Override
            public final LocationManager invoke() {
                Object systemService = context.getSystemService("location");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
                return (LocationManager) systemService;
            }
        });
        this.locationListener = new LocationListener() {
            @Override
            public void onProviderDisabled(String provider) {
                Intrinsics.checkNotNullParameter(provider, "provider");
            }

            @Override
            public void onProviderEnabled(String provider) {
                Intrinsics.checkNotNullParameter(provider, "provider");
            }

            @Override
            @Deprecated(message = "Deprecated in Java")
            public void onStatusChanged(String provider, int status, Bundle extras) {
            }

            @Override
            public void onLocationChanged(android.location.Location location) {
                Intrinsics.checkNotNullParameter(location, "location");
                this.this$0.notifyLocationUpdate(CollectionsKt.arrayListOf(LocationServiceUtils.toCommonLocation(location)));
            }
        };
        this.persistentId = Objects.hash(DeviceLocationProviderType.ANDROID.name(), str, String.valueOf(locationProviderRequest));
    }

    private final LocationManager getLocationManager() {
        return (LocationManager) this.locationManager.getValue();
    }

    @Override
    public int getPersistentId() {
        return this.persistentId;
    }

    private final void createLocationManagerWithHandlerThread() {
        this.locationManagerHandlerThread = new HandlerThread("locationManagerHandlerThread");
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/mapbox/common/location/AndroidDeviceLocationProvider$LocationRequestAttributes;", "", "criteria", "Landroid/location/Criteria;", "minInterval", "", "minDisplacement", "", "(Landroid/location/Criteria;JF)V", "getCriteria", "()Landroid/location/Criteria;", "getMinDisplacement", "()F", "getMinInterval", "()J", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class LocationRequestAttributes {
        private final Criteria criteria;
        private final float minDisplacement;
        private final long minInterval;

        public static LocationRequestAttributes copy$default(LocationRequestAttributes locationRequestAttributes, Criteria criteria, long j, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                criteria = locationRequestAttributes.criteria;
            }
            if ((i & 2) != 0) {
                j = locationRequestAttributes.minInterval;
            }
            if ((i & 4) != 0) {
                f = locationRequestAttributes.minDisplacement;
            }
            return locationRequestAttributes.copy(criteria, j, f);
        }

        public final Criteria getCriteria() {
            return this.criteria;
        }

        public final long getMinInterval() {
            return this.minInterval;
        }

        public final float getMinDisplacement() {
            return this.minDisplacement;
        }

        public final LocationRequestAttributes copy(Criteria criteria, long minInterval, float minDisplacement) {
            Intrinsics.checkNotNullParameter(criteria, "criteria");
            return new LocationRequestAttributes(criteria, minInterval, minDisplacement);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LocationRequestAttributes)) {
                return false;
            }
            LocationRequestAttributes locationRequestAttributes = (LocationRequestAttributes) other;
            return Intrinsics.areEqual(this.criteria, locationRequestAttributes.criteria) && this.minInterval == locationRequestAttributes.minInterval && Float.compare(this.minDisplacement, locationRequestAttributes.minDisplacement) == 0;
        }

        public int hashCode() {
            return (((this.criteria.hashCode() * 31) + Long.hashCode(this.minInterval)) * 31) + Float.hashCode(this.minDisplacement);
        }

        public String toString() {
            return "LocationRequestAttributes(criteria=" + this.criteria + ", minInterval=" + this.minInterval + ", minDisplacement=" + this.minDisplacement + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        public LocationRequestAttributes(Criteria criteria, long j, float f) {
            Intrinsics.checkNotNullParameter(criteria, "criteria");
            this.criteria = criteria;
            this.minInterval = j;
            this.minDisplacement = f;
        }

        public final Criteria getCriteria() {
            return this.criteria;
        }

        public final float getMinDisplacement() {
            return this.minDisplacement;
        }

        public final long getMinInterval() {
            return this.minInterval;
        }
    }

    private final LocationRequestAttributes extractAttributesFromRequest() {
        Criteria criteria;
        long minimumInterval;
        Float fValueOf;
        IntervalSettings interval;
        Expected<LocationError, Criteria> criteria2;
        LocationProviderRequest request = getRequest();
        if (request == null || (criteria2 = LocationProviderSettingsExtKt.toCriteria(request)) == null || (criteria = criteria2.getValue()) == null) {
            criteria = new Criteria();
        }
        LocationProviderRequest request2 = getRequest();
        if (request2 == null || (interval = request2.getInterval()) == null || (minimumInterval = interval.getMinimumInterval()) == null) {
            minimumInterval = 1000L;
        }
        long jLongValue = minimumInterval.longValue();
        LocationProviderRequest request3 = getRequest();
        if (request3 == null || (fValueOf = request3.getDisplacement()) == null) {
            fValueOf = Float.valueOf(0.0f);
        }
        return new LocationRequestAttributes(criteria, jLongValue, fValueOf.floatValue());
    }

    @Override
    protected synchronized void doStart() {
        BaseDeviceLocationProvider.DeviceLocationProviderMode deviceLocationProviderMode;
        createLocationManagerWithHandlerThread();
        LocationRequestAttributes locationRequestAttributesExtractAttributesFromRequest = extractAttributesFromRequest();
        Criteria criteria = locationRequestAttributesExtractAttributesFromRequest.getCriteria();
        long minInterval = locationRequestAttributesExtractAttributesFromRequest.getMinInterval();
        float minDisplacement = locationRequestAttributesExtractAttributesFromRequest.getMinDisplacement();
        PermissionStatus permissionStatus = LocationServiceUtils.getPermissionStatus(getContext());
        MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Permission status: " + permissionStatus);
        BaseDeviceLocationProvider.DeviceLocationProviderMode deviceLocationProviderMode2 = BaseDeviceLocationProvider.DeviceLocationProviderMode.NONE;
        int i = WhenMappings.$EnumSwitchMapping$0[permissionStatus.ordinal()];
        if (i == 1 || i == 2) {
            deviceLocationProviderMode = BaseDeviceLocationProvider.DeviceLocationProviderMode.CALLBACK;
            HandlerThread handlerThread = this.locationManagerHandlerThread;
            if (handlerThread != null) {
                handlerThread.start();
            }
            if (this.providerName != null) {
                Looper looper = null;
                LocationManager locationManager = getLocationManager();
                String str = this.providerName;
                AndroidDeviceLocationProvider$locationListener$1 androidDeviceLocationProvider$locationListener$1 = this.locationListener;
                HandlerThread handlerThread2 = this.locationManagerHandlerThread;
                if (handlerThread2 != null) {
                    looper = handlerThread2.getLooper();
                }
                locationManager.requestLocationUpdates(str, minInterval, minDisplacement, androidDeviceLocationProvider$locationListener$1, looper);
            } else {
                LocationManager locationManager2 = getLocationManager();
                AndroidDeviceLocationProvider$locationListener$1 androidDeviceLocationProvider$locationListener$2 = this.locationListener;
                HandlerThread handlerThread3 = this.locationManagerHandlerThread;
                locationManager2.requestLocationUpdates(minInterval, minDisplacement, criteria, androidDeviceLocationProvider$locationListener$2, handlerThread3 != null ? handlerThread3.getLooper() : null);
            }
        } else if (i == 3) {
            deviceLocationProviderMode = BaseDeviceLocationProvider.DeviceLocationProviderMode.PENDING_INTENT;
            if (this.providerName != null) {
                getLocationManager().requestLocationUpdates(this.providerName, minInterval, minDisplacement, getLocationUpdatePendingIntent());
            } else {
                getLocationManager().requestLocationUpdates(minInterval, minDisplacement, criteria, getLocationUpdatePendingIntent());
            }
        } else {
            this.state = BaseDeviceLocationProvider.DeviceLocationProviderState.STOPPED;
            return;
        }
        setCurrentMode(deviceLocationProviderMode);
        this.state = BaseDeviceLocationProvider.DeviceLocationProviderState.STARTED;
        MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Started location updates with mode " + getCurrentMode());
        if (permissionStatus == PermissionStatus.BACKGROUND) {
            LocationUpdatesReceiver.INSTANCE.addDeviceLocationProvider$common_release(getPersistentId(), this);
        }
    }

    @Override
    protected synchronized void doStop() {
        int i = WhenMappings.$EnumSwitchMapping$1[getCurrentMode().ordinal()];
        if (i == 1) {
            getLocationManager().removeUpdates(this.locationListener);
            HandlerThread handlerThread = this.locationManagerHandlerThread;
            if (handlerThread != null) {
                handlerThread.quitSafely();
            }
        } else if (i == 2) {
            getLocationManager().removeUpdates(getLocationUpdatePendingIntent());
            LocationUpdatesReceiver.INSTANCE.removeDeviceLocationProvider$common_release(getPersistentId());
        } else if (i == 3) {
            MapboxCommonLogger.INSTANCE.logE$common_release(TAG, "Failed to stop: Cannot stop Android device location provider. Invalid mode: " + getCurrentMode());
        }
        this.state = BaseDeviceLocationProvider.DeviceLocationProviderState.STOPPED;
    }

    @Override
    public void requestLocationUpdates(PendingIntent pendingIntent) {
        String str;
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        LocationRequestAttributes locationRequestAttributesExtractAttributesFromRequest = extractAttributesFromRequest();
        Criteria criteria = locationRequestAttributesExtractAttributesFromRequest.getCriteria();
        long minInterval = locationRequestAttributesExtractAttributesFromRequest.getMinInterval();
        float minDisplacement = locationRequestAttributesExtractAttributesFromRequest.getMinDisplacement();
        if (criteria == null) {
            str = "passive";
        } else {
            String bestProvider = getLocationManager().getBestProvider(criteria, true);
            if (bestProvider != null) {
                str = bestProvider;
            } else {
                MapboxCommonLogger.INSTANCE.logW$common_release(TAG, "Provider not found for criteria [" + criteria + "]. Using PASSIVE_PROVIDER");
                str = "passive";
            }
        }
        getLocationManager().requestLocationUpdates(str, minInterval, minDisplacement, pendingIntent);
    }

    @Override
    public void removeLocationUpdates(PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        getLocationManager().removeUpdates(pendingIntent);
    }

    @Override
    public Cancelable getLastLocation(final GetLocationCallback callback) {
        Object obj;
        Intrinsics.checkNotNullParameter(callback, "callback");
        Handler handler = new Handler(Looper.getMainLooper());
        final BaseDeviceLocationProvider.LocationCancelable locationCancelable = new BaseDeviceLocationProvider.LocationCancelable();
        try {
            List<String> allProviders = getLocationManager().getAllProviders();
            Intrinsics.checkNotNullExpressionValue(allProviders, "locationManager.allProviders");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = allProviders.iterator();
            while (it.hasNext()) {
                android.location.Location lastKnownLocation = getLocationManager().getLastKnownLocation((String) it.next());
                if (lastKnownLocation != null) {
                    arrayList.add(lastKnownLocation);
                }
            }
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                Object next = it2.next();
                if (it2.hasNext()) {
                    long elapsedRealtimeMillis = LocationCompat.getElapsedRealtimeMillis((android.location.Location) next);
                    do {
                        Object next2 = it2.next();
                        long elapsedRealtimeMillis2 = LocationCompat.getElapsedRealtimeMillis((android.location.Location) next2);
                        if (elapsedRealtimeMillis < elapsedRealtimeMillis2) {
                            next = next2;
                            elapsedRealtimeMillis = elapsedRealtimeMillis2;
                        }
                    } while (it2.hasNext());
                }
                obj = next;
            } else {
                obj = null;
            }
            final android.location.Location location = (android.location.Location) obj;
            if (location != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        AndroidDeviceLocationProvider.getLastLocation$lambda$2(locationCancelable, callback, location);
                    }
                });
            } else {
                MapboxCommonLogger.INSTANCE.logW$common_release(TAG, "failed to get last known location: " + new LocationError(LocationErrorCode.NOT_AVAILABLE, LocationServiceImpl.ERROR_MESSAGE_LAST_LOCATION_NOT_AVAILABLE).getMessage());
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        AndroidDeviceLocationProvider.getLastLocation$lambda$3(locationCancelable, callback);
                    }
                });
            }
        } catch (Exception e) {
            MapboxCommonLogger.INSTANCE.logW$common_release(TAG, "failed to get last known location: " + e.getMessage());
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    AndroidDeviceLocationProvider.getLastLocation$lambda$4(locationCancelable, callback);
                }
            });
        }
        return locationCancelable;
    }

    public static final void getLastLocation$lambda$2(BaseDeviceLocationProvider.LocationCancelable cancelable, final GetLocationCallback callback, final android.location.Location location) {
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        cancelable.invokeIfNotCanceled(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                callback.run(LocationServiceUtils.toCommonLocation(location));
            }
        });
    }

    public static final void getLastLocation$lambda$3(BaseDeviceLocationProvider.LocationCancelable cancelable, final GetLocationCallback callback) {
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        cancelable.invokeIfNotCanceled(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                callback.run(null);
            }
        });
    }

    public static final void getLastLocation$lambda$4(BaseDeviceLocationProvider.LocationCancelable cancelable, final GetLocationCallback callback) {
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        cancelable.invokeIfNotCanceled(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                callback.run(null);
            }
        });
    }

    @Override
    public List<Location> extractResult(Intent intent) {
        Bundle extras;
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent.hasExtra("location") && (extras = intent.getExtras()) != null) {
            Object obj = extras.get("location");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.location.Location");
            return CollectionsKt.listOf(LocationServiceUtils.toCommonLocation((android.location.Location) obj));
        }
        return CollectionsKt.emptyList();
    }

    @Override
    public String getName() {
        return "mapbox-android";
    }

    public final String getLocationProviderName() {
        return this.locationProviderName;
    }

    public String toString() {
        return "AndroidDeviceLocationProvider(" + getPersistentId() + "): [providerName: " + this.locationProviderName + ", request: " + getRequest() + AbstractJsonLexerKt.END_LIST;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/common/location/AndroidDeviceLocationProvider$Companion;", "", "()V", "TAG", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
