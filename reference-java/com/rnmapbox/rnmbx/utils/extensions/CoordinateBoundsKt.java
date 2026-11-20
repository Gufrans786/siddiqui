package com.rnmapbox.rnmbx.utils.extensions;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.WritableArray;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CoordinateBounds;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toReadableArray", "Lcom/facebook/react/bridge/ReadableArray;", "Lcom/mapbox/maps/CoordinateBounds;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CoordinateBoundsKt {
    public static final ReadableArray toReadableArray(CoordinateBounds coordinateBounds) {
        Intrinsics.checkNotNullParameter(coordinateBounds, "<this>");
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Intrinsics.checkNotNullExpressionValue(writableArrayCreateArray, "createArray(...)");
        Point northeast = coordinateBounds.getNortheast();
        Intrinsics.checkNotNullExpressionValue(northeast, "getNortheast(...)");
        Point southwest = coordinateBounds.getSouthwest();
        Intrinsics.checkNotNullExpressionValue(southwest, "getSouthwest(...)");
        writableArrayCreateArray.pushArray(GeoJSONUtils.INSTANCE.fromLatLng(new LatLng(northeast.latitude(), northeast.longitude())));
        writableArrayCreateArray.pushArray(GeoJSONUtils.INSTANCE.fromLatLng(new LatLng(southwest.latitude(), southwest.longitude())));
        return writableArrayCreateArray;
    }
}
