package com.rnmapbox.rnmbx.shapeAnimators;

import com.facebook.react.bridge.ReadableArray;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.Point;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¨\u0006\u0004"}, d2 = {"buildLineString", "Lcom/mapbox/geojson/LineString;", "_coordinates", "Lcom/facebook/react/bridge/ReadableArray;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXChangeLineOffsetsShapeAnimatorModuleKt {
    public static final LineString buildLineString(ReadableArray readableArray) {
        List listEmptyList = CollectionsKt.emptyList();
        int size = readableArray.size();
        for (int i = 0; i < size; i++) {
            ReadableArray array = readableArray.getArray(i);
            Point pointFromLngLat = array != null ? Point.fromLngLat(array.getDouble(0), array.getDouble(1)) : null;
            if (pointFromLngLat != null) {
                listEmptyList = CollectionsKt.plus((Collection<? extends Point>) listEmptyList, pointFromLngLat);
            } else {
                Logger.INSTANCE.e("RNMBXChangeLineOffsetsShapeAnimatorModule", "buildLineString: null coordinate for item: " + i);
            }
        }
        LineString lineStringFromLngLats = LineString.fromLngLats((List<Point>) listEmptyList);
        Intrinsics.checkNotNullExpressionValue(lineStringFromLngLats, "fromLngLats(...)");
        return lineStringFromLngLats;
    }
}
