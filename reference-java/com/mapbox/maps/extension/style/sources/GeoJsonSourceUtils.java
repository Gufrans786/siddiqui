package com.mapbox.maps.extension.style.sources;

import com.mapbox.geojson.Feature;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.sources.generated.GeoJsonSource;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u001a$\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\u0001H\u0007\u001a$\u0010\t\u001a\u00020\u0003*\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\u0001H\u0007\u001a$\u0010\u000b\u001a\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\u0001H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"TAG", "", "addGeoJSONSourceFeatures", "", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;", "features", "", "Lcom/mapbox/geojson/Feature;", "dataId", "removeGeoJSONSourceFeatures", "featureIds", "updateGeoJSONSourceFeatures", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class GeoJsonSourceUtils {
    private static final String TAG = "GeoJsonSourceUtils";

    public static final void addGeoJSONSourceFeatures(GeoJsonSource geoJsonSource, List<Feature> features) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<this>");
        Intrinsics.checkNotNullParameter(features, "features");
        addGeoJSONSourceFeatures$default(geoJsonSource, features, null, 2, null);
    }

    public static final void removeGeoJSONSourceFeatures(GeoJsonSource geoJsonSource, List<String> featureIds) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<this>");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        removeGeoJSONSourceFeatures$default(geoJsonSource, featureIds, null, 2, null);
    }

    public static final void updateGeoJSONSourceFeatures(GeoJsonSource geoJsonSource, List<Feature> features) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<this>");
        Intrinsics.checkNotNullParameter(features, "features");
        updateGeoJSONSourceFeatures$default(geoJsonSource, features, null, 2, null);
    }

    public static void addGeoJSONSourceFeatures$default(GeoJsonSource geoJsonSource, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        addGeoJSONSourceFeatures(geoJsonSource, list, str);
    }

    public static final void addGeoJSONSourceFeatures(final GeoJsonSource geoJsonSource, final List<Feature> features, final String dataId) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<this>");
        Intrinsics.checkNotNullParameter(features, "features");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        final MapboxStyleManager delegate$extension_style_release = geoJsonSource.getDelegate();
        if (delegate$extension_style_release != null) {
            geoJsonSource.getWorkerHandler$extension_style_release().post(new Runnable() {
                @Override
                public final void run() {
                    GeoJsonSourceUtils.addGeoJSONSourceFeatures$lambda$1$lambda$0(delegate$extension_style_release, geoJsonSource, dataId, features);
                }
            });
        } else {
            MapboxLogger.logW(TAG, "GeoJsonSource.addGeoJSONSourceFeatures is ignored. Style is not loaded yet.");
        }
    }

    public static final void addGeoJSONSourceFeatures$lambda$1$lambda$0(MapboxStyleManager style, GeoJsonSource this_addGeoJSONSourceFeatures, String dataId, List features) {
        Intrinsics.checkNotNullParameter(style, "$style");
        Intrinsics.checkNotNullParameter(this_addGeoJSONSourceFeatures, "$this_addGeoJSONSourceFeatures");
        Intrinsics.checkNotNullParameter(dataId, "$dataId");
        Intrinsics.checkNotNullParameter(features, "$features");
        style.addGeoJSONSourceFeatures(this_addGeoJSONSourceFeatures.getSourceId(), dataId, features);
    }

    public static void updateGeoJSONSourceFeatures$default(GeoJsonSource geoJsonSource, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        updateGeoJSONSourceFeatures(geoJsonSource, list, str);
    }

    public static final void updateGeoJSONSourceFeatures(final GeoJsonSource geoJsonSource, final List<Feature> features, final String dataId) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<this>");
        Intrinsics.checkNotNullParameter(features, "features");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        final MapboxStyleManager delegate$extension_style_release = geoJsonSource.getDelegate();
        if (delegate$extension_style_release != null) {
            geoJsonSource.getWorkerHandler$extension_style_release().post(new Runnable() {
                @Override
                public final void run() {
                    GeoJsonSourceUtils.updateGeoJSONSourceFeatures$lambda$3$lambda$2(delegate$extension_style_release, geoJsonSource, dataId, features);
                }
            });
        } else {
            MapboxLogger.logW(TAG, "GeoJsonSource.updateGeoJSONSourceFeatures is ignored. Style is not loaded yet.");
        }
    }

    public static final void updateGeoJSONSourceFeatures$lambda$3$lambda$2(MapboxStyleManager style, GeoJsonSource this_updateGeoJSONSourceFeatures, String dataId, List features) {
        Intrinsics.checkNotNullParameter(style, "$style");
        Intrinsics.checkNotNullParameter(this_updateGeoJSONSourceFeatures, "$this_updateGeoJSONSourceFeatures");
        Intrinsics.checkNotNullParameter(dataId, "$dataId");
        Intrinsics.checkNotNullParameter(features, "$features");
        style.updateGeoJSONSourceFeatures(this_updateGeoJSONSourceFeatures.getSourceId(), dataId, features);
    }

    public static void removeGeoJSONSourceFeatures$default(GeoJsonSource geoJsonSource, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        removeGeoJSONSourceFeatures(geoJsonSource, list, str);
    }

    public static final void removeGeoJSONSourceFeatures(final GeoJsonSource geoJsonSource, final List<String> featureIds, final String dataId) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<this>");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        final MapboxStyleManager delegate$extension_style_release = geoJsonSource.getDelegate();
        if (delegate$extension_style_release != null) {
            geoJsonSource.getWorkerHandler$extension_style_release().post(new Runnable() {
                @Override
                public final void run() {
                    GeoJsonSourceUtils.removeGeoJSONSourceFeatures$lambda$5$lambda$4(delegate$extension_style_release, geoJsonSource, dataId, featureIds);
                }
            });
        } else {
            MapboxLogger.logW(TAG, "GeoJsonSource.removeGeoJSONSourceFeatures is ignored. Style is not loaded yet.");
        }
    }

    public static final void removeGeoJSONSourceFeatures$lambda$5$lambda$4(MapboxStyleManager style, GeoJsonSource this_removeGeoJSONSourceFeatures, String dataId, List featureIds) {
        Intrinsics.checkNotNullParameter(style, "$style");
        Intrinsics.checkNotNullParameter(this_removeGeoJSONSourceFeatures, "$this_removeGeoJSONSourceFeatures");
        Intrinsics.checkNotNullParameter(dataId, "$dataId");
        Intrinsics.checkNotNullParameter(featureIds, "$featureIds");
        style.removeGeoJSONSourceFeatures(this_removeGeoJSONSourceFeatures.getSourceId(), dataId, featureIds);
    }
}
