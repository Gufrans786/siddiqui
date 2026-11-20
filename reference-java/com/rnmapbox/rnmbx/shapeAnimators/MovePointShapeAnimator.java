package com.rnmapbox.rnmbx.shapeAnimators;

import com.mapbox.geojson.GeoJson;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.Point;
import com.mapbox.turf.TurfConstants;
import com.mapbox.turf.TurfMeasurement;
import com.nimbusds.jose.HeaderParameterNames;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u000eR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/MovePointShapeAnimator;", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorCommon;", HeaderParameterNames.AUTHENTICATION_TAG, "", "Lcom/rnmapbox/rnmbx/shapeAnimators/Tag;", "coordinate", "Lcom/mapbox/geojson/Point;", "<init>", "(JLcom/mapbox/geojson/Point;)V", "point", "Lcom/rnmapbox/rnmbx/shapeAnimators/AnimatableElement;", "getAnimatedShape", "Lcom/mapbox/geojson/GeoJson;", "animatorAgeSec", "", "moveTo", "", "durationSec", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MovePointShapeAnimator extends ShapeAnimatorCommon {
    private AnimatableElement<Point> point;

    public MovePointShapeAnimator(long j, Point coordinate) {
        super(j);
        Intrinsics.checkNotNullParameter(coordinate, "coordinate");
        this.point = new AnimatableElement<>(coordinate, coordinate, coordinate, 0.0d, 0.0d, 0.0d, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return Double.valueOf(MovePointShapeAnimator.point$lambda$0((Point) obj, (Point) obj2));
            }
        });
    }

    public static final double point$lambda$0(Point a, Point b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return TurfMeasurement.distance(a, b);
    }

    @Override
    public GeoJson getAnimatedShape(double animatorAgeSec) {
        LineString lineStringFromLngLats = LineString.fromLngLats((List<Point>) CollectionsKt.listOf((Object[]) new Point[]{this.point.getSource(), this.point.getTarget()}));
        double length = TurfMeasurement.length(lineStringFromLngLats, TurfConstants.UNIT_METERS);
        if (length == 0.0d) {
            stop();
        }
        double dDurationRatio = this.point.durationRatio();
        if (dDurationRatio >= 0.0d && dDurationRatio < 1.0d) {
            AnimatableElement<Point> animatableElement = this.point;
            Point pointAlong = TurfMeasurement.along(lineStringFromLngLats, length * dDurationRatio, TurfConstants.UNIT_METERS);
            Intrinsics.checkNotNullExpressionValue(pointAlong, "along(...)");
            animatableElement.setProgress(pointAlong, animatorAgeSec);
        } else if (dDurationRatio >= 1.0d) {
            stop();
        }
        return this.point.getProgress();
    }

    public final void moveTo(com.mapbox.geojson.Point r10, double r11) {
        throw new UnsupportedOperationException("Method not decompiled: com.rnmapbox.rnmbx.shapeAnimators.MovePointShapeAnimator.moveTo(com.mapbox.geojson.Point, double):void");
    }
}
