package com.rnmapbox.rnmbx.shapeAnimators;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.module.annotations.ReactModule;
import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.NativeRNMBXChangeLineOffsetsShapeAnimatorModuleSpec;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "RNMBXChangeLineOffsetsShapeAnimatorModule")
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J6\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0014\u0010\u0015\u001a\u00020\u00162\n\u0010\f\u001a\u00060\rj\u0002`\u000eH\u0002J8\u0010\u0017\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J.\u0010\u0018\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J.\u0010\u001b\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u001d"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/RNMBXChangeLineOffsetsShapeAnimatorModule;", "Lcom/rnmapbox/rnmbx/NativeRNMBXChangeLineOffsetsShapeAnimatorModuleSpec;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "shapeAnimatorManager", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;)V", "getShapeAnimatorManager", "()Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "generate", "", HeaderParameterNames.AUTHENTICATION_TAG, "", "Lcom/rnmapbox/rnmbx/utils/ViewRefTag;", "coordinates", "Lcom/facebook/react/bridge/ReadableArray;", "startOffset", "endOffset", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "getAnimator", "Lcom/rnmapbox/rnmbx/shapeAnimators/ChangeLineOffsetsShapeAnimator;", "setLineString", "setStartOffset", "offset", TypedValues.TransitionType.S_DURATION, "setEndOffset", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXChangeLineOffsetsShapeAnimatorModule extends NativeRNMBXChangeLineOffsetsShapeAnimatorModuleSpec {
    public static final String LOG_TAG = "RNMBXChangeLineOffsetsShapeAnimatorModule";
    public static final String NAME = "RNMBXChangeLineOffsetsShapeAnimatorModule";
    private final ShapeAnimatorManager shapeAnimatorManager;

    public final ShapeAnimatorManager getShapeAnimatorManager() {
        return this.shapeAnimatorManager;
    }

    public RNMBXChangeLineOffsetsShapeAnimatorModule(ReactApplicationContext reactApplicationContext, ShapeAnimatorManager shapeAnimatorManager) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(shapeAnimatorManager, "shapeAnimatorManager");
        this.shapeAnimatorManager = shapeAnimatorManager;
    }

    @Override
    public void generate(double tag, ReadableArray coordinates, double startOffset, double endOffset, Promise promise) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.shapeAnimatorManager.add(new ChangeLineOffsetsShapeAnimator((long) tag, RNMBXChangeLineOffsetsShapeAnimatorModuleKt.buildLineString(coordinates), startOffset, endOffset));
        if (promise != null) {
            promise.resolve(Integer.valueOf((int) tag));
        }
    }

    private final ChangeLineOffsetsShapeAnimator getAnimator(double tag) {
        ShapeAnimator shapeAnimator = this.shapeAnimatorManager.get((long) tag);
        Intrinsics.checkNotNull(shapeAnimator, "null cannot be cast to non-null type com.rnmapbox.rnmbx.shapeAnimators.ChangeLineOffsetsShapeAnimator");
        return (ChangeLineOffsetsShapeAnimator) shapeAnimator;
    }

    @Override
    public void setLineString(double tag, ReadableArray coordinates, double startOffset, double endOffset, Promise promise) {
        ChangeLineOffsetsShapeAnimator animator = getAnimator(tag);
        if (coordinates == null) {
            return;
        }
        animator.setLineString(RNMBXChangeLineOffsetsShapeAnimatorModuleKt.buildLineString(coordinates), startOffset == -1.0d ? null : Double.valueOf(startOffset), endOffset != -1.0d ? Double.valueOf(endOffset) : null);
        if (promise != null) {
            promise.resolve(true);
        }
    }

    @Override
    public void setStartOffset(double tag, double offset, double duration, Promise promise) {
        getAnimator(tag).setStartOffset(offset, duration / ((double) 1000));
        if (promise != null) {
            promise.resolve(true);
        }
    }

    @Override
    public void setEndOffset(double tag, double offset, double duration, Promise promise) {
        getAnimator(tag).setEndOffset(offset, duration / ((double) 1000));
        if (promise != null) {
            promise.resolve(true);
        }
    }
}
