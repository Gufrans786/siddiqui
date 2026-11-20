package com.rnmapbox.rnmbx.components.camera;

import android.animation.Animator;
import android.content.Context;
import android.util.DisplayMetrics;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.joran.action.Action;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;
import com.rnmapbox.rnmbx.utils.LatLngBounds;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 72\u00020\u0001:\u00017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u0005J\u0010\u0010\u001e\u001a\u00020\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010\nJ\u000e\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u000eJ\u0010\u0010\"\u001a\u00020\u00182\b\u0010#\u001a\u0004\u0018\u00010\u0016J3\u0010$\u001a\u00020\u00182\b\u0010%\u001a\u0004\u0018\u00010\u000e2\b\u0010&\u001a\u0004\u0018\u00010\u000e2\b\u0010'\u001a\u0004\u0018\u00010\u000e2\b\u0010(\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010)J=\u0010*\u001a\u00020\u00182\b\u0010+\u001a\u0004\u0018\u00010\f2\b\u0010%\u001a\u0004\u0018\u00010\u000e2\b\u0010&\u001a\u0004\u0018\u00010\u000e2\b\u0010'\u001a\u0004\u0018\u00010\u000e2\b\u0010(\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010,J\u000e\u0010-\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u000eJ\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u000e\u00103\u001a\u0002042\u0006\u00105\u001a\u000206R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/CameraStop;", "", "<init>", "()V", "mBearing", "", "Ljava/lang/Double;", "mTilt", "mZoom", "mLatLng", "Lcom/rnmapbox/rnmbx/utils/LatLng;", "mBounds", "Lcom/rnmapbox/rnmbx/utils/LatLngBounds;", "mPaddingLeft", "", "Ljava/lang/Integer;", "mPaddingRight", "mPaddingBottom", "mPaddingTop", "mMode", "mDuration", "mCallback", "Landroid/animation/Animator$AnimatorListener;", "setBearing", "", "bearing", "setTilt", "tilt", "setZoom", "zoom", "setLatLng", "latLng", "setDuration", TypedValues.TransitionType.S_DURATION, "setCallback", "callback", "setPadding", ViewProps.PADDING_LEFT, ViewProps.PADDING_RIGHT, ViewProps.PADDING_TOP, ViewProps.PADDING_BOTTOM, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "setBounds", "bounds", "(Lcom/rnmapbox/rnmbx/utils/LatLngBounds;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "setMode", "mode", "convert", "Lcom/mapbox/maps/EdgeInsets;", "value", "", "toCameraUpdate", "Lcom/rnmapbox/rnmbx/components/camera/CameraUpdateItem;", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraStop {

    public static final Companion INSTANCE = new Companion(null);
    private Double mBearing;
    private LatLngBounds mBounds;
    private Animator.AnimatorListener mCallback;
    private LatLng mLatLng;
    private Integer mPaddingBottom;
    private Integer mPaddingLeft;
    private Integer mPaddingRight;
    private Integer mPaddingTop;
    private Double mTilt;
    private Double mZoom;
    private int mMode = 2;
    private int mDuration = 2000;

    @JvmStatic
    public static final CameraStop fromReadableMap(Context context, ReadableMap readableMap, Animator.AnimatorListener animatorListener) {
        return INSTANCE.fromReadableMap(context, readableMap, animatorListener);
    }

    public final void setBearing(double bearing) {
        this.mBearing = Double.valueOf(bearing);
    }

    public final void setTilt(double tilt) {
        this.mTilt = Double.valueOf(tilt);
    }

    public final void setZoom(double zoom) {
        this.mZoom = Double.valueOf(zoom);
    }

    public final void setLatLng(LatLng latLng) {
        this.mLatLng = latLng;
    }

    public final void setDuration(int duration) {
        this.mDuration = duration;
    }

    public final void setCallback(Animator.AnimatorListener callback) {
        this.mCallback = callback;
    }

    public final void setPadding(Integer paddingLeft, Integer paddingRight, Integer paddingTop, Integer paddingBottom) {
        this.mPaddingLeft = paddingLeft;
        this.mPaddingRight = paddingRight;
        this.mPaddingTop = paddingTop;
        this.mPaddingBottom = paddingBottom;
    }

    public final void setBounds(LatLngBounds bounds, Integer paddingLeft, Integer paddingRight, Integer paddingTop, Integer paddingBottom) {
        this.mBounds = bounds;
        setPadding(paddingLeft, paddingRight, paddingTop, paddingBottom);
    }

    public final void setMode(int mode) {
        this.mMode = mode;
    }

    private final EdgeInsets convert(int[] value) {
        return new EdgeInsets(value[1], value[0], value[3], value[2]);
    }

    public final CameraUpdateItem toCameraUpdate(RNMBXMapView mapView) {
        double pitch;
        double bearing;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        MapboxMap mapboxMap = mapView.getMapboxMap();
        CameraState cameraState = mapboxMap.getCameraState();
        CameraOptions.Builder builder = new CameraOptions.Builder();
        builder.center(cameraState.getCenter());
        builder.bearing(Double.valueOf(cameraState.getBearing()));
        builder.padding(cameraState.getPadding());
        builder.zoom(Double.valueOf(cameraState.getZoom()));
        Double d = this.mBearing;
        if (d != null) {
            builder.bearing(d);
        }
        Double d2 = this.mTilt;
        if (d2 != null) {
            builder.pitch(d2);
        }
        Double d3 = this.mZoom;
        if (d3 != null) {
            builder.zoom(d3);
        }
        EdgeInsets padding = cameraState.getPadding();
        Intrinsics.checkNotNullExpressionValue(padding, "getPadding(...)");
        Integer num = this.mPaddingLeft;
        int iIntValue = num != null ? num.intValue() : (int) padding.getLeft();
        Integer num2 = this.mPaddingTop;
        int iIntValue2 = num2 != null ? num2.intValue() : (int) padding.getTop();
        Integer num3 = this.mPaddingRight;
        int iIntValue3 = num3 != null ? num3.intValue() : (int) padding.getRight();
        Integer num4 = this.mPaddingBottom;
        EdgeInsets edgeInsetsConvert = convert(INSTANCE.clippedPadding(new int[]{iIntValue, iIntValue2, iIntValue3, num4 != null ? num4.intValue() : (int) padding.getBottom()}, mapView));
        builder.padding(edgeInsetsConvert);
        LatLng latLng = this.mLatLng;
        if (latLng != null) {
            Intrinsics.checkNotNull(latLng);
            builder.center(latLng.getPoint());
        } else if (this.mBounds != null) {
            Double d4 = this.mTilt;
            if (d4 != null) {
                Intrinsics.checkNotNull(d4);
                pitch = d4.doubleValue();
            } else {
                pitch = cameraState.getPitch();
            }
            Double d5 = this.mBearing;
            if (d5 != null) {
                Intrinsics.checkNotNull(d5);
                bearing = d5.doubleValue();
            } else {
                bearing = cameraState.getBearing();
            }
            LatLngBounds latLngBounds = this.mBounds;
            Intrinsics.checkNotNull(latLngBounds);
            CameraOptions cameraOptionsCameraForCoordinateBounds$default = MapCameraManagerDelegate.DefaultImpls.cameraForCoordinateBounds$default(mapboxMap, latLngBounds.toBounds(), edgeInsetsConvert, Double.valueOf(bearing), Double.valueOf(pitch), null, null, 48, null);
            builder.center(cameraOptionsCameraForCoordinateBounds$default.getCenter());
            builder.anchor(cameraOptionsCameraForCoordinateBounds$default.getAnchor());
            builder.zoom(cameraOptionsCameraForCoordinateBounds$default.getZoom());
            builder.bearing(cameraOptionsCameraForCoordinateBounds$default.getBearing());
            builder.pitch(cameraOptionsCameraForCoordinateBounds$default.getPitch());
            builder.padding(cameraOptionsCameraForCoordinateBounds$default.getPadding());
        }
        CameraOptions cameraOptionsBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "build(...)");
        return new CameraUpdateItem(mapboxMap, cameraOptionsBuild, this.mDuration, this.mCallback, this.mMode);
    }

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J'\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002¢\u0006\u0002\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/CameraStop$Companion;", "", "<init>", "()V", "fromReadableMap", "Lcom/rnmapbox/rnmbx/components/camera/CameraStop;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "readableMap", "Lcom/facebook/react/bridge/ReadableMap;", "callback", "Landroid/animation/Animator$AnimatorListener;", "clippedPadding", "", ViewProps.PADDING, "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "getBoundsPaddingByKey", "", "map", "density", "", Action.KEY_ATTRIBUTE, "", "(Lcom/facebook/react/bridge/ReadableMap;FLjava/lang/String;)Ljava/lang/Integer;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CameraStop fromReadableMap(Context context, ReadableMap readableMap, Animator.AnimatorListener callback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(readableMap, "readableMap");
            CameraStop cameraStop = new CameraStop();
            if (readableMap.hasKey("pitch")) {
                cameraStop.setTilt(readableMap.getDouble("pitch"));
            }
            if (readableMap.hasKey("heading")) {
                cameraStop.setBearing(readableMap.getDouble("heading"));
            }
            if (readableMap.hasKey("centerCoordinate")) {
                Point pointGeometry = GeoJSONUtils.toPointGeometry(readableMap.getString("centerCoordinate"));
                GeoJSONUtils geoJSONUtils = GeoJSONUtils.INSTANCE;
                Intrinsics.checkNotNull(pointGeometry);
                cameraStop.setLatLng(geoJSONUtils.toLatLng(pointGeometry));
            }
            if (readableMap.hasKey("zoom")) {
                cameraStop.setZoom(readableMap.getDouble("zoom"));
            }
            if (readableMap.hasKey(TypedValues.TransitionType.S_DURATION)) {
                cameraStop.setDuration(readableMap.getInt(TypedValues.TransitionType.S_DURATION));
            }
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Integer boundsPaddingByKey = getBoundsPaddingByKey(readableMap, displayMetrics.density, ViewProps.PADDING_TOP);
            Integer boundsPaddingByKey2 = getBoundsPaddingByKey(readableMap, displayMetrics.density, ViewProps.PADDING_RIGHT);
            Integer boundsPaddingByKey3 = getBoundsPaddingByKey(readableMap, displayMetrics.density, ViewProps.PADDING_BOTTOM);
            Integer boundsPaddingByKey4 = getBoundsPaddingByKey(readableMap, displayMetrics.density, ViewProps.PADDING_LEFT);
            if (readableMap.hasKey("bounds")) {
                String string = readableMap.getString("bounds");
                Intrinsics.checkNotNull(string);
                FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(string);
                Intrinsics.checkNotNull(featureCollectionFromJson);
                cameraStop.setBounds(GeoJSONUtils.toLatLngBounds(featureCollectionFromJson), boundsPaddingByKey4, boundsPaddingByKey2, boundsPaddingByKey, boundsPaddingByKey3);
            } else {
                cameraStop.setPadding(boundsPaddingByKey4, boundsPaddingByKey2, boundsPaddingByKey, boundsPaddingByKey3);
            }
            if (readableMap.hasKey("mode")) {
                int i = readableMap.getInt("mode");
                if (i == 1) {
                    cameraStop.setMode(1);
                } else if (i == 3) {
                    cameraStop.setMode(3);
                } else if (i == 4) {
                    cameraStop.setMode(4);
                } else if (i == 5) {
                    cameraStop.setMode(5);
                } else {
                    cameraStop.setMode(2);
                }
            }
            cameraStop.setCallback(callback);
            return cameraStop;
        }

        public final int[] clippedPadding(int[] padding, RNMBXMapView mapView) {
            int height = mapView.getHeight();
            int width = mapView.getWidth();
            int i = padding[0];
            int i2 = padding[1];
            int i3 = padding[2];
            int i4 = padding[3];
            int i5 = i2 + i4;
            if (i5 >= height) {
                double d = i5;
                double d2 = (d - ((double) height)) + 1.0d;
                i2 -= (int) ((((double) i2) * d2) / d);
                i4 -= (int) ((((double) i4) * d2) / d);
            }
            int i6 = i + i3;
            if (i6 >= width) {
                double d3 = i6;
                double d4 = (d3 - ((double) width)) + 1.0d;
                i -= (int) ((((double) i) * d4) / d3);
                i3 -= (int) ((((double) i3) * d4) / d3);
            }
            return new int[]{i, i2, i3, i4};
        }

        private final Integer getBoundsPaddingByKey(ReadableMap map, float density, String key) {
            if (map.hasKey(key)) {
                return Integer.valueOf((int) (map.getInt(key) * density));
            }
            return null;
        }
    }
}
