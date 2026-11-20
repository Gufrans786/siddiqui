package com.rnmapbox.rnmbx.utils.extensions;

import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.Geometry;
import com.mapbox.turf.TurfMeasurement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002¨\u0006\u0005"}, d2 = {"toJSONObject", "Lorg/json/JSONObject;", "Lcom/mapbox/geojson/Geometry;", "calculateBoundingBox", "Lcom/mapbox/geojson/BoundingBox;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class GeometryKt {
    public static final JSONObject toJSONObject(Geometry geometry) {
        Intrinsics.checkNotNullParameter(geometry, "<this>");
        return new JSONObject(geometry.toJson());
    }

    public static final BoundingBox calculateBoundingBox(Geometry geometry) {
        Intrinsics.checkNotNullParameter(geometry, "<this>");
        BoundingBox boundingBoxBbox = geometry.bbox();
        if (boundingBoxBbox != null) {
            return boundingBoxBbox;
        }
        double[] dArrBbox = TurfMeasurement.bbox(geometry);
        BoundingBox boundingBoxFromLngLats = BoundingBox.fromLngLats(dArrBbox[0], dArrBbox[1], dArrBbox[2], dArrBbox[3]);
        Intrinsics.checkNotNullExpressionValue(boundingBoxFromLngLats, "fromLngLats(...)");
        return boundingBoxFromLngLats;
    }
}
