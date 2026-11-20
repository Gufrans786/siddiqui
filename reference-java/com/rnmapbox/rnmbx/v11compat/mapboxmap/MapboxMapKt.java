package com.rnmapbox.rnmbx.v11compat.mapboxmap;

import android.animation.Animator;
import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.ExpectedFactory;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.AsyncOperationResultCallback;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.FeatureStateOperationCallback;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.animation.MapAnimationOptions;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aL\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u001e\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0004\u0012\u00020\u00010\n\u001aN\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u001e\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0004\u0012\u00020\u00010\n\u001a\"\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015\u001a\"\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015\u001a\u0012\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0018\u001a\u001a\u0010\u0017\u001a\u00020\u0001*\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\u0018¨\u0006\u001c"}, d2 = {"setFeatureStateCompat", "", "Lcom/mapbox/maps/MapboxMap;", "sourceId", "", "sourceLayerId", "featureId", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/bindgen/Value;", "callback", "Lkotlin/Function1;", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/None;", "removeFeatureStateCompat", "stateKey", "flyToV11", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "animationOptions", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;", "animationListener", "Landroid/animation/Animator$AnimatorListener;", "easeToV11", "clearData", "Lcom/mapbox/maps/AsyncOperationResultCallback;", "Lcom/mapbox/maps/MapboxMap$Companion;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MapboxMapKt {
    public static final void setFeatureStateCompat(MapboxMap mapboxMap, String sourceId, String str, String featureId, Value state, final Function1<? super Expected<String, None>, Unit> callback) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(callback, "callback");
        mapboxMap.setFeatureState(sourceId, str, featureId, state, new FeatureStateOperationCallback() {
            @Override
            public final void run(Expected expected) {
                MapboxMapKt.setFeatureStateCompat$lambda$0(callback, expected);
            }
        });
    }

    public static final void setFeatureStateCompat$lambda$0(Function1 function1, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "<unused var>");
        Expected expectedCreateNone = ExpectedFactory.createNone();
        Intrinsics.checkNotNullExpressionValue(expectedCreateNone, "createNone(...)");
        function1.invoke(expectedCreateNone);
    }

    public static final void removeFeatureStateCompat(MapboxMap mapboxMap, String sourceId, String str, String featureId, String str2, final Function1<? super Expected<String, None>, Unit> callback) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        mapboxMap.removeFeatureState(sourceId, str, featureId, str2, new FeatureStateOperationCallback() {
            @Override
            public final void run(Expected expected) {
                MapboxMapKt.removeFeatureStateCompat$lambda$1(callback, expected);
            }
        });
    }

    public static final void removeFeatureStateCompat$lambda$1(Function1 function1, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "<unused var>");
        Expected expectedCreateNone = ExpectedFactory.createNone();
        Intrinsics.checkNotNullExpressionValue(expectedCreateNone, "createNone(...)");
        function1.invoke(expectedCreateNone);
    }

    public static final void flyToV11(MapboxMap mapboxMap, CameraOptions cameraOptions, MapAnimationOptions.Builder animationOptions, Animator.AnimatorListener animationListener) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        Intrinsics.checkNotNullParameter(animationOptions, "animationOptions");
        Intrinsics.checkNotNullParameter(animationListener, "animationListener");
        CameraAnimationsUtils.flyTo(mapboxMap, cameraOptions, animationOptions.build(), animationListener);
    }

    public static final void easeToV11(MapboxMap mapboxMap, CameraOptions cameraOptions, MapAnimationOptions.Builder animationOptions, Animator.AnimatorListener animationListener) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        Intrinsics.checkNotNullParameter(animationOptions, "animationOptions");
        Intrinsics.checkNotNullParameter(animationListener, "animationListener");
        CameraAnimationsUtils.easeTo(mapboxMap, cameraOptions, animationOptions.build(), animationListener);
    }

    public static final void clearData(MapboxMap mapboxMap, AsyncOperationResultCallback callback) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MapboxMap.INSTANCE.clearData(callback);
    }

    public static final void clearData(MapboxMap.Companion companion, Context context, AsyncOperationResultCallback callback) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        companion.clearData(callback);
    }
}
