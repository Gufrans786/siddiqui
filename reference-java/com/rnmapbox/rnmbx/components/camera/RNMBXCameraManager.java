package com.rnmapbox.rnmbx.components.camera;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXCameraManagerInterface;
import com.mapbox.geojson.FeatureCollection;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import com.rnmapbox.rnmbx.utils.extensions.DynamicKt;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001*B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0017H\u0017J\u0018\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0017H\u0017J\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0017H\u0017J\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0017H\u0017J\u0018\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010 \u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010!\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010\"\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010#\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010$\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010%\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0017J\u001a\u0010'\u001a\u00020\u00142\b\u0010(\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0016J\u001a\u0010)\u001a\u00020\u00142\b\u0010(\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006+"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/RNMBXCameraManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;", "Lcom/facebook/react/viewmanagers/RNMBXCameraManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "customEvents", "", "", "getName", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setStop", "", "camera", "map", "Lcom/facebook/react/bridge/Dynamic;", "setDefaultStop", "setUserTrackingMode", "userTrackingMode", "setZoomLevel", "zoomLevel", "setMinZoomLevel", "value", "setMaxZoomLevel", "setFollowUserLocation", "setFollowUserMode", "setFollowZoomLevel", "setFollowPitch", "setFollowHeading", "setFollowPadding", "setMaxBounds", "setAnimationDuration", "view", "setAnimationMode", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCameraManager extends AbstractEventEmitter<RNMBXCamera> implements RNMBXCameraManagerInterface<RNMBXCamera> {
    public static final String REACT_CLASS = "RNMBXCamera";
    private final ReactApplicationContext mContext;
    private final ViewTagResolver viewTagResolver;

    @Override
    public void setAnimationDuration(RNMBXCamera view, Dynamic value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    @Override
    public void setAnimationMode(RNMBXCamera view, Dynamic value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    public RNMBXCameraManager(ReactApplicationContext mContext, ViewTagResolver viewTagResolver) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.mContext = mContext;
        this.viewTagResolver = viewTagResolver;
    }

    @Override
    public Map<String, String> customEvents() {
        return new HashMap();
    }

    @Override
    public String getName() {
        return "RNMBXCamera";
    }

    @Override
    public RNMBXCamera createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXCamera(reactContext, this);
    }

    @Override
    @ReactProp(name = "stop")
    public void setStop(RNMBXCamera camera, Dynamic map) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(map, "map");
        if (map.isNull()) {
            return;
        }
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null || !readableMapAsMap.keySetIterator().hasNextKey()) {
            Logger.INSTANCE.e("RNMBXCameraManager", "stop map is null or empty");
        } else {
            camera.setStop(CameraStop.INSTANCE.fromReadableMap(this.mContext, readableMapAsMap, null));
        }
    }

    @Override
    @ReactProp(name = "defaultStop")
    public void setDefaultStop(RNMBXCamera camera, Dynamic map) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(map, "map");
        if (map.isNull()) {
            return;
        }
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e("RNMBXCameraManager", "defaultStop map is null");
        } else {
            camera.setDefaultStop(CameraStop.INSTANCE.fromReadableMap(this.mContext, readableMapAsMap, null));
        }
    }

    @Override
    @ReactProp(name = "userTrackingMode")
    public void setUserTrackingMode(RNMBXCamera camera, Dynamic userTrackingMode) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(userTrackingMode, "userTrackingMode");
        camera.setUserTrackingMode(userTrackingMode.asInt());
        throw new AssertionError("Unused code");
    }

    @Override
    @ReactProp(name = "zoomLevel")
    public void setZoomLevel(RNMBXCamera camera, Dynamic zoomLevel) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(zoomLevel, "zoomLevel");
        camera.setZoomLevel(zoomLevel.asDouble());
    }

    @Override
    @ReactProp(name = "minZoomLevel")
    public void setMinZoomLevel(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        camera.setMinZoomLevel(DynamicKt.asDoubleOrNull(value));
    }

    @Override
    @ReactProp(name = "maxZoomLevel")
    public void setMaxZoomLevel(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        camera.setMaxZoomLevel(DynamicKt.asDoubleOrNull(value));
    }

    @Override
    @ReactProp(name = "followUserLocation")
    public void setFollowUserLocation(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        camera.setFollowUserLocation(DynamicKt.asBooleanOrNull(value));
    }

    @Override
    @ReactProp(name = "followUserMode")
    public void setFollowUserMode(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        camera.setFollowUserMode(DynamicKt.asStringOrNull(value));
    }

    @Override
    @ReactProp(name = "followZoomLevel")
    public void setFollowZoomLevel(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        camera.setFollowZoomLevel(DynamicKt.asDoubleOrNull(value));
    }

    @Override
    @ReactProp(name = "followPitch")
    public void setFollowPitch(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        camera.setFollowPitch(DynamicKt.asDoubleOrNull(value));
    }

    @Override
    @ReactProp(name = "followHeading")
    public void setFollowHeading(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        camera.setFollowHeading(DynamicKt.asDoubleOrNull(value));
    }

    @Override
    @ReactProp(name = "followPadding")
    public void setFollowPadding(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        ReadableMap readableMapAsMap = value.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e("RNMBXCameraManager", "followPadding map is null");
        } else {
            camera.setFollowPadding(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "maxBounds")
    public void setMaxBounds(RNMBXCamera camera, Dynamic value) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(value, "value");
        if (!value.isNull()) {
            String strAsString = value.asString();
            if (strAsString == null) {
                Logger.INSTANCE.e("RNMBXCameraManager", "maxBounds string is null");
                return;
            }
            FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(strAsString);
            Intrinsics.checkNotNull(featureCollectionFromJson);
            camera.setMaxBounds(GeoJSONUtils.toLatLngBounds(featureCollectionFromJson));
            return;
        }
        camera.setMaxBounds(null);
    }
}
