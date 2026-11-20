package com.mapbox.maps.plugin.animation;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapOptions;
import com.mapbox.maps.MercatorCoordinate;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.Size;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapTransformDelegate;
import com.payfort.fortpaymentsdk.constants.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ&\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007J\u0016\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\rJ%\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0001¢\u0006\u0002\b$J\n\u0010%\u001a\u00020\u0007*\u00020\u0007J\u0014\u0010&\u001a\u00020'*\u00020\u00072\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0014\u0010)\u001a\u00020'*\u00020\u00072\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0014\u0010*\u001a\u00020'*\u00020\u00072\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0012\u0010\u000e\u001a\u00020\n*\u00020+2\u0006\u0010,\u001a\u00020+J\u0012\u0010\u000e\u001a\u00020\n*\u00020\n2\u0006\u0010,\u001a\u00020\nJ\n\u0010-\u001a\u00020\u0007*\u00020\u0007J\n\u0010.\u001a\u00020\u0007*\u00020\u0007J\n\u0010/\u001a\u00020\r*\u00020\rJ\n\u00100\u001a\u00020\u0007*\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/mapbox/maps/plugin/animation/CameraTransform;", "", "()V", "DEGREES_MAX", "", "LONGITUDE_MAX", "PRECISION", "", "angleBetween", "p1", "Lcom/mapbox/maps/ScreenCoordinate;", "p2", "calculateLatLngMoveBy", "Lcom/mapbox/geojson/Point;", "offset", "cameraState", "Lcom/mapbox/maps/CameraState;", "mapTransformDelegate", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "calculateScaleBy", Constants.FORT_PARAMS.AMOUNT, "currentZoom", "getMapCenter", "edgeInsets", "Lcom/mapbox/maps/EdgeInsets;", "mapSize", "Lcom/mapbox/maps/Size;", "unwrapForShortestPath", "start", ViewProps.END, "wrap", "value", "min", "max", "wrap$plugin_animation_release", "deg2rad", "eq", "", "other", "ge", "less", "Lcom/mapbox/maps/MercatorCoordinate;", "arg", "rad2deg", "scaleZoom", "wrapCoordinate", "zoomScale", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CameraTransform {
    private static final int DEGREES_MAX = 360;
    public static final CameraTransform INSTANCE = new CameraTransform();
    private static final int LONGITUDE_MAX = 180;
    private static final double PRECISION = 1.0E-6d;

    private final boolean less(double d, double d2) {
        return d - d2 < -1.0E-6d;
    }

    public final double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    public final double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    private CameraTransform() {
    }

    public final double angleBetween(ScreenCoordinate p1, ScreenCoordinate p2) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        Intrinsics.checkNotNullParameter(p2, "p2");
        return Math.atan2((p1.getX() * p2.getY()) - (p1.getY() * p2.getX()), (p1.getX() * p2.getX()) + (p1.getY() * p2.getY()));
    }

    public final double scaleZoom(double d) {
        return MathKt.log2(d);
    }

    public final double zoomScale(double d) {
        return Math.pow(2.0d, d);
    }

    public final ScreenCoordinate offset(MercatorCoordinate mercatorCoordinate, MercatorCoordinate arg) {
        Intrinsics.checkNotNullParameter(mercatorCoordinate, "<this>");
        Intrinsics.checkNotNullParameter(arg, "arg");
        return new ScreenCoordinate(mercatorCoordinate.getX() - arg.getX(), mercatorCoordinate.getY() - arg.getY());
    }

    public final ScreenCoordinate offset(ScreenCoordinate screenCoordinate, ScreenCoordinate arg) {
        Intrinsics.checkNotNullParameter(screenCoordinate, "<this>");
        Intrinsics.checkNotNullParameter(arg, "arg");
        return new ScreenCoordinate(screenCoordinate.getX() - arg.getX(), screenCoordinate.getY() - arg.getY());
    }

    public final ScreenCoordinate getMapCenter(EdgeInsets edgeInsets, Size mapSize) {
        Intrinsics.checkNotNullParameter(edgeInsets, "edgeInsets");
        Intrinsics.checkNotNullParameter(mapSize, "mapSize");
        return new ScreenCoordinate((((((double) mapSize.getWidth()) - edgeInsets.getLeft()) - edgeInsets.getRight()) / 2.0d) + edgeInsets.getLeft(), (((((double) mapSize.getHeight()) - edgeInsets.getTop()) - edgeInsets.getBottom()) / 2.0d) + edgeInsets.getTop());
    }

    public final Point unwrapForShortestPath(Point start, Point end) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        double dAbs = Math.abs(end.longitude() - start.longitude());
        if (dAbs <= 180.0d || dAbs >= 360.0d) {
            return start;
        }
        double dLongitude = start.longitude();
        if (start.longitude() > 0.0d && end.longitude() < 0.0d) {
            dLongitude -= (double) DEGREES_MAX;
        } else if (start.longitude() < 0.0d && end.longitude() > 0.0d) {
            dLongitude += (double) DEGREES_MAX;
        }
        Point pointFromLngLat = Point.fromLngLat(dLongitude, start.latitude());
        Intrinsics.checkNotNullExpressionValue(pointFromLngLat, "fromLngLat(lon, start.latitude())");
        return pointFromLngLat;
    }

    public final Point calculateLatLngMoveBy(ScreenCoordinate offset, CameraState cameraState, MapTransformDelegate mapTransformDelegate, MapCameraManagerDelegate mapCameraManagerDelegate) {
        Intrinsics.checkNotNullParameter(offset, "offset");
        Intrinsics.checkNotNullParameter(cameraState, "cameraState");
        Intrinsics.checkNotNullParameter(mapTransformDelegate, "mapTransformDelegate");
        Intrinsics.checkNotNullParameter(mapCameraManagerDelegate, "mapCameraManagerDelegate");
        MapOptions mapOptions = mapTransformDelegate.getMapOptions();
        EdgeInsets padding = cameraState.getPadding();
        Intrinsics.checkNotNullExpressionValue(padding, "cameraState.padding");
        Size size = mapOptions.getSize();
        Intrinsics.checkNotNull(size);
        ScreenCoordinate mapCenter = getMapCenter(padding, size);
        return mapCameraManagerDelegate.coordinateForPixel(new ScreenCoordinate(mapCenter.getX() - offset.getX(), mapCenter.getY() - offset.getY()));
    }

    public final double calculateScaleBy(double amount, double currentZoom) {
        return MathKt.log2(amount) + currentZoom;
    }

    public final Point wrapCoordinate(Point point) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        double dWrap$plugin_animation_release = wrap$plugin_animation_release(point.longitude(), -180.0d, 180.0d);
        if (Double.isNaN(dWrap$plugin_animation_release)) {
            Point pointFromLngLat = Point.fromLngLat(point.longitude(), point.latitude());
            Intrinsics.checkNotNullExpressionValue(pointFromLngLat, "fromLngLat(this.longitude(), this.latitude())");
            return pointFromLngLat;
        }
        Point pointFromLngLat2 = Point.fromLngLat(dWrap$plugin_animation_release, point.latitude());
        Intrinsics.checkNotNullExpressionValue(pointFromLngLat2, "fromLngLat(lng, this.latitude())");
        return pointFromLngLat2;
    }

    public final double wrap$plugin_animation_release(double value, double min, double max) {
        if (eq(value, max)) {
            return min;
        }
        if (ge(value, min) && less(value, max)) {
            return value;
        }
        double d = max - min;
        double d2 = ((value - min) % d) + min;
        return value < min ? d2 + d : d2;
    }

    private final boolean eq(double d, double d2) {
        return Math.abs(d - d2) < PRECISION;
    }

    private final boolean ge(double d, double d2) {
        return d - d2 > PRECISION || eq(d, d2);
    }
}
