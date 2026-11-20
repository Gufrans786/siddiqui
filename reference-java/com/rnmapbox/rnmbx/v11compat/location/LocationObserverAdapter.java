package com.rnmapbox.rnmbx.v11compat.location;

import com.mapbox.common.location.Location;
import com.mapbox.common.location.LocationObserver;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;", "Lcom/mapbox/common/location/LocationObserver;", "callback", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;", "<init>", "(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;)V", "getCallback", "()Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;", "onLocationUpdateReceived", "", "locations", "", "Lcom/mapbox/common/location/Location;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationObserverAdapter implements LocationObserver {
    private final LocationEngineCallback callback;

    public LocationObserverAdapter(LocationEngineCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final LocationEngineCallback getCallback() {
        return this.callback;
    }

    @Override
    public void onLocationUpdateReceived(List<Location> locations) {
        Intrinsics.checkNotNullParameter(locations, "locations");
        this.callback.onSuccess(new LocationEngineResult((Location) CollectionsKt.last((List) locations)));
    }
}
