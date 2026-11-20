package com.rnmapbox.rnmbx.components.camera;

import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.animation.MapAnimationOptions;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.NativeRNMBXCameraModuleSpec;
import com.rnmapbox.rnmbx.components.mapview.CommandResponse;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 '2\u00020\u0001:\u0001'B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J9\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b0\u0012H\u0002¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0002J-\u0010\u0018\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\rH\u0002JE\u0010 \u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010#JM\u0010$\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010%\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010&R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006("}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/RNMBXCameraModule;", "Lcom/rnmapbox/rnmbx/NativeRNMBXCameraModuleSpec;", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "withViewportOnUIThread", "", "viewRef", "", "Lcom/rnmapbox/rnmbx/utils/ViewRefTag;", "reject", "Lcom/facebook/react/bridge/Promise;", "fn", "Lkotlin/Function1;", "Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;", "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V", "createCommandResponse", "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;", BaseJavaModule.METHOD_TYPE_PROMISE, "updateCameraStop", "stop", "Lcom/facebook/react/bridge/ReadableMap;", "(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V", "getAnimationOptions", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "animationMode", "animationDuration", "moveBy", "x", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, "(Ljava/lang/Double;DDDDLcom/facebook/react/bridge/Promise;)V", "scaleBy", "scaleFactor", "(Ljava/lang/Double;DDDDDLcom/facebook/react/bridge/Promise;)V", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCameraModule extends NativeRNMBXCameraModuleSpec {
    public static final String NAME = "RNMBXCameraModule";
    private final ViewTagResolver viewTagResolver;

    public RNMBXCameraModule(ReactApplicationContext context, ViewTagResolver viewTagResolver) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.viewTagResolver = viewTagResolver;
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    private final void withViewportOnUIThread(Double viewRef, Promise reject, Function1<? super RNMBXCamera, Unit> fn) {
        if (viewRef == null) {
            reject.reject(new Exception("viewRef is null"));
        } else {
            this.viewTagResolver.withViewResolved((int) viewRef.doubleValue(), reject, fn);
        }
    }

    private final CommandResponse createCommandResponse(final Promise promise) {
        return new CommandResponse() {
            @Override
            public void success(Function1<? super WritableMap, Unit> builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                WritableNativeMap writableNativeMap = new WritableNativeMap();
                builder.invoke(writableNativeMap);
                promise.resolve(writableNativeMap);
            }

            @Override
            public void error(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                promise.reject(new Exception(message));
            }
        };
    }

    @Override
    public void updateCameraStop(Double viewRef, final ReadableMap stop, final Promise promise) {
        Intrinsics.checkNotNullParameter(stop, "stop");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withViewportOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCameraModule.updateCameraStop$lambda$0(stop, promise, (RNMBXCamera) obj);
            }
        });
    }

    public static final Unit updateCameraStop$lambda$0(ReadableMap readableMap, Promise promise, RNMBXCamera it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.updateCameraStop(readableMap);
        promise.resolve(null);
        return Unit.INSTANCE;
    }

    private final MapAnimationOptions getAnimationOptions(double animationMode, double animationDuration) {
        MapAnimationOptions.Builder builder = new MapAnimationOptions.Builder();
        int i = (int) animationMode;
        if (i == 2) {
            builder.interpolator(new AccelerateDecelerateInterpolator());
        } else if (i == 3) {
            builder.interpolator(new LinearInterpolator());
        }
        builder.duration((long) animationDuration);
        return builder.build();
    }

    @Override
    public void moveBy(Double viewRef, final double x, final double y, final double animationMode, final double animationDuration, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withViewportOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCameraModule.moveBy$lambda$4(this.f$0, animationMode, animationDuration, x, y, promise, (RNMBXCamera) obj);
            }
        });
    }

    public static final Unit moveBy$lambda$4(RNMBXCameraModule rNMBXCameraModule, double d, double d2, double d3, double d4, Promise promise, RNMBXCamera it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MapboxMap mapboxMap = it.getMapboxMap();
        if (mapboxMap != null) {
            CameraAnimationsUtils.moveBy$default(mapboxMap, new ScreenCoordinate(d3, d4), rNMBXCameraModule.getAnimationOptions(d, d2), null, 4, null);
            promise.resolve(null);
        }
        return Unit.INSTANCE;
    }

    @Override
    public void scaleBy(Double viewRef, final double x, final double y, final double animationMode, final double animationDuration, final double scaleFactor, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withViewportOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCameraModule.scaleBy$lambda$6(this.f$0, animationMode, animationDuration, scaleFactor, x, y, promise, (RNMBXCamera) obj);
            }
        });
    }

    public static final Unit scaleBy$lambda$6(RNMBXCameraModule rNMBXCameraModule, double d, double d2, double d3, double d4, double d5, Promise promise, RNMBXCamera it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MapboxMap mapboxMap = it.getMapboxMap();
        if (mapboxMap != null) {
            CameraAnimationsUtils.scaleBy$default(mapboxMap, d3, new ScreenCoordinate(d4, d5), rNMBXCameraModule.getAnimationOptions(d, d2), null, 8, null);
            promise.resolve(null);
        }
        return Unit.INSTANCE;
    }
}
