package com.rnmapbox.rnmbx.utils.extensions;

import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.WritableNativeArray;
import com.mapbox.geojson.Point;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002¨\u0006\u0005"}, d2 = {"toReadableArray", "Lcom/facebook/react/bridge/ReadableArray;", "Lcom/mapbox/geojson/Point;", "toDoubleArray", "", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PointKt {
    public static final ReadableArray toReadableArray(Point point) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        WritableNativeArray writableNativeArray = new WritableNativeArray();
        writableNativeArray.pushDouble(point.longitude());
        writableNativeArray.pushDouble(point.latitude());
        return writableNativeArray;
    }

    public static final double[] toDoubleArray(Point point) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        return new double[]{point.longitude(), point.latitude()};
    }
}
