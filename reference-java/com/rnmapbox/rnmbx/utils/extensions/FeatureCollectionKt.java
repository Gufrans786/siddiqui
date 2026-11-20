package com.rnmapbox.rnmbx.utils.extensions;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toGeometryCollection", "Lcom/mapbox/geojson/GeometryCollection;", "Lcom/mapbox/geojson/FeatureCollection;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class FeatureCollectionKt {
    public static final GeometryCollection toGeometryCollection(FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "<this>");
        List<Feature> listFeatures = featureCollection.features();
        Intrinsics.checkNotNull(listFeatures);
        List<Feature> list = listFeatures;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Geometry geometry = ((Feature) it.next()).geometry();
            Intrinsics.checkNotNull(geometry);
            arrayList.add(geometry);
        }
        GeometryCollection geometryCollectionFromGeometries = GeometryCollection.fromGeometries(arrayList);
        Intrinsics.checkNotNullExpressionValue(geometryCollectionFromGeometries, "fromGeometries(...)");
        return geometryCollectionFromGeometries;
    }
}
