package com.rnmapbox.rnmbx.v11compat.location;

import com.mapbox.common.location.DeviceLocationProvider;
import com.mapbox.common.location.LocationProviderRequest;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;", "", "locationProvider", "Lcom/mapbox/common/location/DeviceLocationProvider;", "request", "Lcom/mapbox/common/location/LocationProviderRequest;", "<init>", "(Lcom/mapbox/common/location/DeviceLocationProvider;Lcom/mapbox/common/location/LocationProviderRequest;)V", "getLocationProvider", "()Lcom/mapbox/common/location/DeviceLocationProvider;", "setLocationProvider", "(Lcom/mapbox/common/location/DeviceLocationProvider;)V", "getRequest", "()Lcom/mapbox/common/location/LocationProviderRequest;", "setRequest", "(Lcom/mapbox/common/location/LocationProviderRequest;)V", "observers", "", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;", "getObservers", "()Ljava/util/List;", "setObservers", "(Ljava/util/List;)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationEngine {
    private DeviceLocationProvider locationProvider;
    private List<LocationObserverAdapter> observers;
    private LocationProviderRequest request;

    public LocationEngine(DeviceLocationProvider locationProvider, LocationProviderRequest request) {
        Intrinsics.checkNotNullParameter(locationProvider, "locationProvider");
        Intrinsics.checkNotNullParameter(request, "request");
        this.locationProvider = locationProvider;
        this.request = request;
        this.observers = new ArrayList();
    }

    public final DeviceLocationProvider getLocationProvider() {
        return this.locationProvider;
    }

    public final LocationProviderRequest getRequest() {
        return this.request;
    }

    public final void setLocationProvider(DeviceLocationProvider deviceLocationProvider) {
        Intrinsics.checkNotNullParameter(deviceLocationProvider, "<set-?>");
        this.locationProvider = deviceLocationProvider;
    }

    public final void setRequest(LocationProviderRequest locationProviderRequest) {
        Intrinsics.checkNotNullParameter(locationProviderRequest, "<set-?>");
        this.request = locationProviderRequest;
    }

    public final List<LocationObserverAdapter> getObservers() {
        return this.observers;
    }

    public final void setObservers(List<LocationObserverAdapter> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.observers = list;
    }
}
