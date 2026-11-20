package com.rnmapbox.rnmbx.v11compat.annotation;

import com.mapbox.geojson.Geometry;
import com.mapbox.maps.ViewAnnotationAnchor;
import com.mapbox.maps.ViewAnnotationAnchorConfig;
import com.mapbox.maps.ViewAnnotationOptions;
import com.mapbox.maps.viewannotation.ViewAnnotationOptionsKtxKt;
import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001a\u0010\u0007\u001a\u00020\b*\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000*\n\u0010\u0002\"\u00020\u00012\u00020\u0001¨\u0006\f"}, d2 = {"INVALID_ANNOTATION_ID", "", "AnnotationID", "geometry", "Lcom/mapbox/maps/ViewAnnotationOptions$Builder;", "point", "Lcom/mapbox/geojson/Geometry;", "offsets", "", "x", "", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class AnnotationKt {
    public static final String INVALID_ANNOTATION_ID = "";

    public static final ViewAnnotationOptions.Builder geometry(ViewAnnotationOptions.Builder builder, Geometry point) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(point, "point");
        return ViewAnnotationOptionsKtxKt.geometry(builder, point);
    }

    public static final void offsets(ViewAnnotationOptions.Builder builder, double d, double d2) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.variableAnchors(CollectionsKt.listOf(new ViewAnnotationAnchorConfig.Builder().anchor(ViewAnnotationAnchor.CENTER).offsetX(d).offsetY(d2).build()));
    }
}
