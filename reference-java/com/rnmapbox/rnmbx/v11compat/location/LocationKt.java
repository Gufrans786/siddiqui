package com.rnmapbox.rnmbx.v11compat.location;

import android.content.Context;
import android.os.Looper;
import ch.qos.logback.core.CoreConstants;
import com.google.common.net.HttpHeaders;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.location.AccuracyLevel;
import com.mapbox.common.location.DeviceLocationProvider;
import com.mapbox.common.location.GetLocationCallback;
import com.mapbox.common.location.IntervalSettings;
import com.mapbox.common.location.Location;
import com.mapbox.common.location.LocationError;
import com.mapbox.common.location.LocationProviderRequest;
import com.mapbox.common.location.LocationService;
import com.mapbox.common.location.LocationServiceFactory;
import com.mapbox.maps.MapView;
import com.mapbox.maps.plugin.PuckBearing;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentPlugin;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentUtils;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0013\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017\u001a\u0012\u0010\u001e\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017\u001a\u0006\u0010$\u001a\u00020%\u001a\u0010\u0010&\u001a\u0004\u0018\u00010\u00152\u0006\u0010'\u001a\u00020(\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\t\"0\u0010\f\u001a\u00060\u0001j\u0002`\u000b*\u00020\u00062\n\u0010\n\u001a\u00060\u0001j\u0002`\u000b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010\"\u0019\u0010\u001f\u001a\u00020 *\u00060\u0012j\u0002`!8F¢\u0006\u0006\u001a\u0004\b\"\u0010#*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0011\"\u00020\u00122\u00020\u0012¨\u0006)"}, d2 = {"PuckBearing", "Lcom/mapbox/maps/plugin/PuckBearing;", "DEFAULT_FASTEST_INTERVAL_MILLIS", "", "DEFAULT_INTERVAL_MILLIS", "location2", "Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;", "Lcom/mapbox/maps/MapView;", "getLocation2", "(Lcom/mapbox/maps/MapView;)Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;", "value", "Lcom/rnmapbox/rnmbx/v11compat/location/PuckBearing;", "puckBearingSource", "getPuckBearingSource", "(Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;)Lcom/mapbox/maps/plugin/PuckBearing;", "setPuckBearingSource", "(Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;Lcom/mapbox/maps/plugin/PuckBearing;)V", HttpHeaders.LOCATION, "Lcom/mapbox/common/location/Location;", "requestLocationUpdatesV11", "", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;", "callback", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;", "looper", "Landroid/os/Looper;", "minDisplacement", "", "(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;Landroid/os/Looper;Ljava/lang/Float;)V", "removeLocationUpdates", "getLastLocation", "accuracy", "", "Lcom/rnmapbox/rnmbx/v11compat/location/Location;", "getAccuracy", "(Lcom/mapbox/common/location/Location;)D", "intervalSettings", "Lcom/mapbox/common/location/IntervalSettings;", "createLocationEngine", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class LocationKt {
    public static final long DEFAULT_FASTEST_INTERVAL_MILLIS = 1000;
    public static final long DEFAULT_INTERVAL_MILLIS = 1000;

    public static final LocationComponentPlugin getLocation2(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "<this>");
        return LocationComponentUtils.getLocationComponent(mapView);
    }

    public static final PuckBearing getPuckBearingSource(LocationComponentPlugin locationComponentPlugin) {
        Intrinsics.checkNotNullParameter(locationComponentPlugin, "<this>");
        return locationComponentPlugin.getPuckBearing();
    }

    public static final void setPuckBearingSource(LocationComponentPlugin locationComponentPlugin, PuckBearing value) {
        Intrinsics.checkNotNullParameter(locationComponentPlugin, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        locationComponentPlugin.setPuckBearing(value);
    }

    public static final void requestLocationUpdatesV11(LocationEngine locationEngine, LocationEngineCallback callback, Looper looper, Float f) {
        Intrinsics.checkNotNullParameter(locationEngine, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LocationProviderRequest.Builder builder = new LocationProviderRequest.Builder();
        builder.interval(intervalSettings());
        builder.accuracy(AccuracyLevel.HIGH);
        if (f != null && f.floatValue() > 0.0f) {
            builder.displacement(f);
        }
        LocationProviderRequest locationProviderRequestBuild = builder.build();
        if (!locationProviderRequestBuild.equals(locationEngine.getRequest())) {
            Expected<LocationError, DeviceLocationProvider> deviceLocationProvider = LocationServiceFactory.getOrCreate().getDeviceLocationProvider(locationProviderRequestBuild);
            if (deviceLocationProvider.isValue()) {
                DeviceLocationProvider value = deviceLocationProvider.getValue();
                Intrinsics.checkNotNull(value);
                locationEngine.setLocationProvider(value);
                Intrinsics.checkNotNull(locationProviderRequestBuild);
                locationEngine.setRequest(locationProviderRequestBuild);
            } else {
                Logger logger = Logger.INSTANCE;
                LocationError error = deviceLocationProvider.getError();
                Intrinsics.checkNotNull(error);
                logger.e("RNMBXLocationEngine", "Failed to get location provider: " + error.getMessage());
            }
        }
        LocationObserverAdapter locationObserverAdapter = new LocationObserverAdapter(callback);
        if (looper != null) {
            locationEngine.getLocationProvider().addLocationObserver(locationObserverAdapter, looper);
        } else {
            locationEngine.getLocationProvider().addLocationObserver(locationObserverAdapter);
        }
        locationEngine.getObservers().add(locationObserverAdapter);
    }

    public static final void removeLocationUpdates(LocationEngine locationEngine, final LocationEngineCallback callback) {
        Intrinsics.checkNotNullParameter(locationEngine, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        List<LocationObserverAdapter> observers = locationEngine.getObservers();
        ArrayList arrayList = new ArrayList();
        for (Object obj : observers) {
            if (Intrinsics.areEqual(((LocationObserverAdapter) obj).getCallback(), callback)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            locationEngine.getLocationProvider().removeLocationObserver((LocationObserverAdapter) it.next());
        }
        CollectionsKt.removeAll((List) locationEngine.getObservers(), new Function1() {
            @Override
            public final Object invoke(Object obj2) {
                return Boolean.valueOf(LocationKt.removeLocationUpdates$lambda$2(callback, (LocationObserverAdapter) obj2));
            }
        });
    }

    public static final boolean removeLocationUpdates$lambda$2(LocationEngineCallback locationEngineCallback, LocationObserverAdapter it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it.getCallback(), locationEngineCallback);
    }

    public static final void getLastLocation(LocationEngine locationEngine, final LocationEngineCallback callback) {
        Intrinsics.checkNotNullParameter(locationEngine, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        DeviceLocationProvider locationProvider = locationEngine.getLocationProvider();
        if (locationProvider != null) {
            locationProvider.getLastLocation(new GetLocationCallback() {
                @Override
                public final void run(Location location) {
                    LocationKt.getLastLocation$lambda$4(callback, location);
                }
            });
        }
    }

    public static final void getLastLocation$lambda$4(LocationEngineCallback locationEngineCallback, Location location) {
        if (location != null) {
            locationEngineCallback.onSuccess(new LocationEngineResult(location));
        }
    }

    public static final double getAccuracy(Location location) {
        Intrinsics.checkNotNullParameter(location, "<this>");
        Double verticalAccuracy = location.getVerticalAccuracy();
        double dAbs = verticalAccuracy != null ? Math.abs(verticalAccuracy.doubleValue()) : 0.0d;
        Double horizontalAccuracy = location.getHorizontalAccuracy();
        return (dAbs + (horizontalAccuracy != null ? Math.abs(horizontalAccuracy.doubleValue()) : 0.0d)) / 2.0d;
    }

    public static final IntervalSettings intervalSettings() {
        IntervalSettings intervalSettingsBuild = new IntervalSettings.Builder().interval(1000L).maximumInterval(1000L).build();
        Intrinsics.checkNotNullExpressionValue(intervalSettingsBuild, "build(...)");
        return intervalSettingsBuild;
    }

    public static final LocationEngine createLocationEngine(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        LocationService orCreate = LocationServiceFactory.getOrCreate();
        Intrinsics.checkNotNullExpressionValue(orCreate, "getOrCreate(...)");
        LocationProviderRequest locationProviderRequestBuild = new LocationProviderRequest.Builder().interval(intervalSettings()).build();
        Expected<LocationError, DeviceLocationProvider> deviceLocationProvider = orCreate.getDeviceLocationProvider(locationProviderRequestBuild);
        if (!deviceLocationProvider.isValue()) {
            return null;
        }
        DeviceLocationProvider value = deviceLocationProvider.getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNull(locationProviderRequestBuild);
        return new LocationEngine(value, locationProviderRequestBuild);
    }
}
