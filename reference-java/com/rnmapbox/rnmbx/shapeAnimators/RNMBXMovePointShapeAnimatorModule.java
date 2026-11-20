package com.rnmapbox.rnmbx.shapeAnimators;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.module.annotations.ReactModule;
import com.mapbox.geojson.Point;
import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.NativeRNMBXMovePointShapeAnimatorModuleSpec;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "RNMBXMovePointShapeAnimatorModule")
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0017J0\u0010\u0013\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/RNMBXMovePointShapeAnimatorModule;", "Lcom/rnmapbox/rnmbx/NativeRNMBXMovePointShapeAnimatorModuleSpec;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "shapeAnimatorManager", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;)V", "getShapeAnimatorManager", "()Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "generate", "", HeaderParameterNames.AUTHENTICATION_TAG, "", "Lcom/rnmapbox/rnmbx/utils/ViewRefTag;", "startCoordinate", "Lcom/facebook/react/bridge/ReadableArray;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "moveTo", "coordinate", TypedValues.TransitionType.S_DURATION, "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMovePointShapeAnimatorModule extends NativeRNMBXMovePointShapeAnimatorModuleSpec {
    public static final String LOG_TAG = "RNMBXMovePointShapeAnimatorModule";
    public static final String NAME = "RNMBXMovePointShapeAnimatorModule";
    private final ShapeAnimatorManager shapeAnimatorManager;

    public final ShapeAnimatorManager getShapeAnimatorManager() {
        return this.shapeAnimatorManager;
    }

    public RNMBXMovePointShapeAnimatorModule(ReactApplicationContext reactApplicationContext, ShapeAnimatorManager shapeAnimatorManager) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(shapeAnimatorManager, "shapeAnimatorManager");
        this.shapeAnimatorManager = shapeAnimatorManager;
    }

    @Override
    @ReactMethod
    public void generate(double tag, ReadableArray startCoordinate, Promise promise) {
        Intrinsics.checkNotNullParameter(startCoordinate, "startCoordinate");
        Intrinsics.checkNotNullParameter(promise, "promise");
        ShapeAnimatorManager shapeAnimatorManager = this.shapeAnimatorManager;
        Point pointFromLngLat = Point.fromLngLat(startCoordinate.getDouble(0), startCoordinate.getDouble(1));
        Intrinsics.checkNotNullExpressionValue(pointFromLngLat, "fromLngLat(...)");
        shapeAnimatorManager.add(new MovePointShapeAnimator((long) tag, pointFromLngLat));
        promise.resolve(Integer.valueOf((int) tag));
    }

    @Override
    @ReactMethod
    public void moveTo(double tag, ReadableArray coordinate, double duration, Promise promise) {
        ShapeAnimator shapeAnimator = this.shapeAnimatorManager.get((long) tag);
        Intrinsics.checkNotNull(shapeAnimator, "null cannot be cast to non-null type com.rnmapbox.rnmbx.shapeAnimators.MovePointShapeAnimator");
        Intrinsics.checkNotNull(coordinate);
        Point pointFromLngLat = Point.fromLngLat(coordinate.getDouble(0), coordinate.getDouble(1));
        Intrinsics.checkNotNull(pointFromLngLat);
        ((MovePointShapeAnimator) shapeAnimator).moveTo(pointFromLngLat, duration / ((double) 1000));
    }
}
