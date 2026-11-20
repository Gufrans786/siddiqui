package com.rnmapbox.rnmbx.location;

import android.content.Context;
import android.os.Looper;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.android.core.permissions.PermissionsManager;
import com.mapbox.common.location.Location;
import com.mapbox.geojson.Point;
import com.mapbox.maps.plugin.locationcomponent.LocationConsumer;
import com.mapbox.maps.plugin.locationcomponent.LocationProvider;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngine;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngineCallback;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngineResult;
import com.rnmapbox.rnmbx.v11compat.location.LocationKt;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0016\u001a\u00020\u0017H\u0007J\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0011H\u0017J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0011H\u0016J\u0012\u0010\u001c\u001a\u00020\u00172\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001fJ\u0010\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0014\u0010#\u001a\u00020\u00172\n\u0010$\u001a\u00060%j\u0002`&H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006'"}, d2 = {"Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;", "mEngine", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;Landroid/content/Context;)V", "getMEngine", "()Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;", "setMEngine", "(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;)V", "getContext", "()Landroid/content/Context;", "mConsumers", "Ljava/util/ArrayList;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;", "getMConsumers", "()Ljava/util/ArrayList;", "setMConsumers", "(Ljava/util/ArrayList;)V", "beforeAddingFirstConsumer", "", "afterRemovedLastConsumer", "registerLocationConsumer", "locationConsumer", "unRegisterLocationConsumer", "notifyLocationUpdates", "location", "Lcom/mapbox/common/location/Location;", "Lcom/rnmapbox/rnmbx/v11compat/location/Location;", "onSuccess", "locationEngineResult", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;", "onFailure", JWKParameterNames.RSA_EXPONENT, "Ljava/lang/Exception;", "Lkotlin/Exception;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationProviderForEngine implements LocationProvider, LocationEngineCallback {
    private final Context context;
    private ArrayList<LocationConsumer> mConsumers;
    private LocationEngine mEngine;

    public final void afterRemovedLastConsumer() {
    }

    @Override
    public void onFailure(Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
    }

    public LocationProviderForEngine(LocationEngine locationEngine, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.mEngine = locationEngine;
        this.context = context;
        this.mConsumers = new ArrayList<>();
    }

    public final Context getContext() {
        return this.context;
    }

    public final LocationEngine getMEngine() {
        return this.mEngine;
    }

    public final void setMEngine(LocationEngine locationEngine) {
        this.mEngine = locationEngine;
    }

    public final ArrayList<LocationConsumer> getMConsumers() {
        return this.mConsumers;
    }

    public final void setMConsumers(ArrayList<LocationConsumer> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mConsumers = arrayList;
    }

    public final void beforeAddingFirstConsumer() {
        LocationEngine locationEngine;
        if (PermissionsManager.INSTANCE.areLocationPermissionsGranted(this.context) && (locationEngine = this.mEngine) != null) {
            LocationKt.requestLocationUpdatesV11(locationEngine, this, Looper.getMainLooper(), null);
        }
    }

    @Override
    public void registerLocationConsumer(LocationConsumer locationConsumer) {
        Intrinsics.checkNotNullParameter(locationConsumer, "locationConsumer");
        if (this.mConsumers.isEmpty()) {
            beforeAddingFirstConsumer();
        }
        this.mConsumers.add(locationConsumer);
        LocationEngine locationEngine = this.mEngine;
        if (locationEngine != null) {
            LocationKt.getLastLocation(locationEngine, this);
        }
    }

    @Override
    public void unRegisterLocationConsumer(LocationConsumer locationConsumer) {
        Intrinsics.checkNotNullParameter(locationConsumer, "locationConsumer");
        this.mConsumers.remove(locationConsumer);
        if (this.mConsumers.isEmpty()) {
            afterRemovedLastConsumer();
        }
    }

    public final void notifyLocationUpdates(Location location) {
        Intrinsics.checkNotNullParameter(location, "location");
        Iterator<LocationConsumer> it = this.mConsumers.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            LocationConsumer next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            LocationConsumer locationConsumer = next;
            LocationConsumer.DefaultImpls.onLocationUpdated$default(locationConsumer, new Point[]{Point.fromLngLat(location.getLongitude(), location.getLatitude())}, null, 2, null);
            Double bearing = location.getBearing();
            if (bearing != null) {
                LocationConsumer.DefaultImpls.onBearingUpdated$default(locationConsumer, new double[]{Double.valueOf(bearing.doubleValue()).doubleValue()}, null, 2, null);
            }
        }
    }

    @Override
    public void onSuccess(LocationEngineResult locationEngineResult) {
        Intrinsics.checkNotNullParameter(locationEngineResult, "locationEngineResult");
        Location lastLocation = locationEngineResult.getLastLocation();
        if (lastLocation != null) {
            notifyLocationUpdates(lastLocation);
        }
    }
}
