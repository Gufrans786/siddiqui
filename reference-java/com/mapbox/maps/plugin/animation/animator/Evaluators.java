package com.mapbox.maps.plugin.animation.animator;

import android.animation.TypeEvaluator;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.geojson.Point;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.animation.CameraAnimationsPluginImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0007R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/mapbox/maps/plugin/animation/animator/Evaluators;", "", "()V", "DOUBLE", "Landroid/animation/TypeEvaluator;", "", "getDOUBLE", "()Landroid/animation/TypeEvaluator;", "EDGE_INSET", "Lcom/mapbox/maps/EdgeInsets;", "getEDGE_INSET", "POINT", "Lcom/mapbox/geojson/Point;", "getPOINT", "SCREEN_COORDINATE", "Lcom/mapbox/maps/ScreenCoordinate;", "getSCREEN_COORDINATE", "zeroEdgeInsets", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Evaluators {
    public static final Evaluators INSTANCE = new Evaluators();
    private static final TypeEvaluator<Point> POINT = new CameraTypeEvaluator() {
        @Override
        public boolean canSkip(Object obj, Object obj2, Object[] objArr) {
            return CameraTypeEvaluator.DefaultImpls.canSkip(this, obj, obj2, objArr);
        }

        @Override
        public final Point evaluate(float f, Point point, Point point2) {
            if (f == 1.0f) {
                return point2;
            }
            if (f == 0.0f) {
                return point;
            }
            double dLongitude = point2.longitude() - point.longitude();
            double dLatitude = point2.latitude() - point.latitude();
            if (dLongitude == 0.0d && dLatitude == 0.0d) {
                return point;
            }
            double d = f;
            return Point.fromLngLat(point.longitude() + (dLongitude * d), point.latitude() + (d * dLatitude));
        }
    };
    private static final TypeEvaluator<Double> DOUBLE = new CameraTypeEvaluator() {
        @Override
        public boolean canSkip(Object obj, Object obj2, Object[] objArr) {
            return CameraTypeEvaluator.DefaultImpls.canSkip(this, obj, obj2, objArr);
        }

        @Override
        public final Double evaluate(float f, Double startValue, Double d) {
            if (f == 1.0f) {
                return d;
            }
            if (f == 0.0f) {
                return startValue;
            }
            double dDoubleValue = d.doubleValue();
            Intrinsics.checkNotNullExpressionValue(startValue, "startValue");
            double dDoubleValue2 = dDoubleValue - startValue.doubleValue();
            return dDoubleValue2 == 0.0d ? startValue : Double.valueOf(startValue.doubleValue() + (((double) f) * dDoubleValue2));
        }
    };
    private static final EdgeInsets zeroEdgeInsets = new EdgeInsets(0.0d, 0.0d, 0.0d, 0.0d);
    private static final TypeEvaluator<EdgeInsets> EDGE_INSET = new CameraTypeEvaluator() {
        @Override
        public boolean canSkip(Object obj, Object obj2, Object[] objArr) {
            return CameraTypeEvaluator.DefaultImpls.canSkip(this, obj, obj2, objArr);
        }

        @Override
        public final EdgeInsets evaluate(float f, EdgeInsets edgeInsets, EdgeInsets edgeInsets2) {
            EdgeInsets edgeInsets3;
            EdgeInsets edgeInsets4;
            if (edgeInsets2 != null) {
                edgeInsets3 = edgeInsets2;
            } else {
                MapboxLogger.logW(CameraAnimationsPluginImpl.TAG, "End edge insets are null (fraction: " + f + CoreConstants.RIGHT_PARENTHESIS_CHAR);
                edgeInsets3 = Evaluators.zeroEdgeInsets;
            }
            if (f == 1.0f) {
                return edgeInsets3;
            }
            if (edgeInsets != null) {
                edgeInsets4 = edgeInsets;
            } else {
                MapboxLogger.logW(CameraAnimationsPluginImpl.TAG, "Start edge insets are null (fraction: " + f + CoreConstants.RIGHT_PARENTHESIS_CHAR);
                edgeInsets4 = Evaluators.zeroEdgeInsets;
            }
            if (f == 0.0f) {
                return edgeInsets4;
            }
            double top = edgeInsets3.getTop() - edgeInsets4.getTop();
            double left = edgeInsets3.getLeft() - edgeInsets4.getLeft();
            double bottom = edgeInsets3.getBottom() - edgeInsets4.getBottom();
            double right = edgeInsets3.getRight() - edgeInsets4.getRight();
            if (top == 0.0d && left == 0.0d && bottom == 0.0d && right == 0.0d) {
                return edgeInsets4;
            }
            double d = f;
            return new EdgeInsets(edgeInsets4.getTop() + (top * d), edgeInsets4.getLeft() + (left * d), edgeInsets4.getBottom() + (bottom * d), edgeInsets4.getRight() + (d * right));
        }
    };
    private static final TypeEvaluator<ScreenCoordinate> SCREEN_COORDINATE = new CameraTypeEvaluator() {
        @Override
        public boolean canSkip(Object obj, Object obj2, Object[] objArr) {
            return CameraTypeEvaluator.DefaultImpls.canSkip(this, obj, obj2, objArr);
        }

        @Override
        public final ScreenCoordinate evaluate(float f, ScreenCoordinate screenCoordinate, ScreenCoordinate screenCoordinate2) {
            if (f == 1.0f) {
                return screenCoordinate2;
            }
            if (f == 0.0f) {
                return screenCoordinate;
            }
            double x = screenCoordinate2.getX() - screenCoordinate.getX();
            double y = screenCoordinate2.getY() - screenCoordinate.getY();
            if (x == 0.0d && y == 0.0d) {
                return screenCoordinate;
            }
            double d = f;
            return new ScreenCoordinate(screenCoordinate.getX() + (x * d), screenCoordinate.getY() + (d * y));
        }
    };

    private Evaluators() {
    }

    public final TypeEvaluator<Point> getPOINT() {
        return POINT;
    }

    public final TypeEvaluator<Double> getDOUBLE() {
        return DOUBLE;
    }

    public final TypeEvaluator<EdgeInsets> getEDGE_INSET() {
        return EDGE_INSET;
    }

    public final TypeEvaluator<ScreenCoordinate> getSCREEN_COORDINATE() {
        return SCREEN_COORDINATE;
    }
}
