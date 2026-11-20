package com.mapbox.maps.plugin.locationcomponent.animators;

import android.animation.TypeEvaluator;
import com.mapbox.geojson.Point;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/animators/Evaluators;", "", "()V", "DOUBLE", "Landroid/animation/TypeEvaluator;", "", "getDOUBLE", "()Landroid/animation/TypeEvaluator;", "POINT", "Lcom/mapbox/geojson/Point;", "getPOINT", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Evaluators {
    public static final Evaluators INSTANCE = new Evaluators();
    private static final TypeEvaluator<Point> POINT = new TypeEvaluator() {
        @Override
        public final Object evaluate(float f, Object obj, Object obj2) {
            return Evaluators.POINT$lambda$0(f, (Point) obj, (Point) obj2);
        }
    };
    private static final TypeEvaluator<Double> DOUBLE = new TypeEvaluator() {
        @Override
        public final Object evaluate(float f, Object obj, Object obj2) {
            return Evaluators.DOUBLE$lambda$1(f, (Double) obj, (Double) obj2);
        }
    };

    private Evaluators() {
    }

    public final TypeEvaluator<Point> getPOINT() {
        return POINT;
    }

    public static final Point POINT$lambda$0(float f, Point point, Point point2) {
        double d = f;
        double dLongitude = point.longitude() + ((point2.longitude() - point.longitude()) * d);
        double dLatitude = point.latitude() + ((point2.latitude() - point.latitude()) * d);
        if (point.hasAltitude() && point2.hasAltitude()) {
            return Point.fromLngLat(dLongitude, dLatitude, point.altitude() + (d * (point2.altitude() - point.altitude())));
        }
        return Point.fromLngLat(dLongitude, dLatitude);
    }

    public final TypeEvaluator<Double> getDOUBLE() {
        return DOUBLE;
    }

    public static final Double DOUBLE$lambda$1(float f, Double startValue, Double d) {
        double dDoubleValue = startValue.doubleValue();
        double dDoubleValue2 = d.doubleValue();
        Intrinsics.checkNotNullExpressionValue(startValue, "startValue");
        return Double.valueOf(dDoubleValue + (((double) f) * (dDoubleValue2 - startValue.doubleValue())));
    }
}
