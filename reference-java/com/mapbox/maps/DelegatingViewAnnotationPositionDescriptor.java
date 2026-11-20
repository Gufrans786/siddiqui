package com.mapbox.maps;

import com.mapbox.geojson.Point;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/mapbox/maps/DelegatingViewAnnotationPositionDescriptor;", "Lcom/mapbox/maps/ViewAnnotationPositionDescriptor;", TSGeofence.FIELD_IDENTIFIER, "", "width", "", "height", "leftTopCoordinate", "Lcom/mapbox/maps/ScreenCoordinate;", "anchorCoordinate", "Lcom/mapbox/geojson/Point;", "anchorConfig", "Lcom/mapbox/maps/ViewAnnotationAnchorConfig;", "(Ljava/lang/String;DDLcom/mapbox/maps/ScreenCoordinate;Lcom/mapbox/geojson/Point;Lcom/mapbox/maps/ViewAnnotationAnchorConfig;)V", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DelegatingViewAnnotationPositionDescriptor extends ViewAnnotationPositionDescriptor {
    public DelegatingViewAnnotationPositionDescriptor(String identifier, double d, double d2, ScreenCoordinate leftTopCoordinate, Point anchorCoordinate, ViewAnnotationAnchorConfig anchorConfig) {
        super(identifier, d, d2, leftTopCoordinate, anchorCoordinate, anchorConfig);
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(leftTopCoordinate, "leftTopCoordinate");
        Intrinsics.checkNotNullParameter(anchorCoordinate, "anchorCoordinate");
        Intrinsics.checkNotNullParameter(anchorConfig, "anchorConfig");
    }
}
