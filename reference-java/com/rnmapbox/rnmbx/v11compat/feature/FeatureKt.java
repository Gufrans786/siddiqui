package com.rnmapbox.rnmbx.v11compat.feature;

import com.mapbox.geojson.Feature;
import com.mapbox.maps.QueriedRenderedFeature;
import com.mapbox.maps.QueriedSourceFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u0019\u0010\u0002\u001a\u00020\u0003*\u00060\u0001j\u0002`\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\"\u0019\u0010\u0002\u001a\u00020\u0003*\u00060\bj\u0002`\t8F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\n*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0007\"\u00020\b2\u00020\b¨\u0006\u000b"}, d2 = {"QueriedRenderedFeature", "Lcom/mapbox/maps/QueriedRenderedFeature;", "feature", "Lcom/mapbox/geojson/Feature;", "Lcom/rnmapbox/rnmbx/v11compat/feature/QueriedRenderedFeature;", "getFeature", "(Lcom/mapbox/maps/QueriedRenderedFeature;)Lcom/mapbox/geojson/Feature;", "QueriedSourceFeature", "Lcom/mapbox/maps/QueriedSourceFeature;", "Lcom/rnmapbox/rnmbx/v11compat/feature/QueriedSourceFeature;", "(Lcom/mapbox/maps/QueriedSourceFeature;)Lcom/mapbox/geojson/Feature;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class FeatureKt {
    public static final Feature getFeature(QueriedRenderedFeature queriedRenderedFeature) {
        Intrinsics.checkNotNullParameter(queriedRenderedFeature, "<this>");
        Feature feature = queriedRenderedFeature.getQueriedFeature().getFeature();
        Intrinsics.checkNotNullExpressionValue(feature, "getFeature(...)");
        return feature;
    }

    public static final Feature getFeature(QueriedSourceFeature queriedSourceFeature) {
        Intrinsics.checkNotNullParameter(queriedSourceFeature, "<this>");
        Feature feature = queriedSourceFeature.getQueriedFeature().getFeature();
        Intrinsics.checkNotNullExpressionValue(feature, "getFeature(...)");
        return feature;
    }
}
