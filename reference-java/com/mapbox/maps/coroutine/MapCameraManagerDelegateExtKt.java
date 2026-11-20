package com.mapbox.maps.coroutine;

import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aO\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"awaitCameraForCoordinates", "Lcom/mapbox/maps/CameraOptions;", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "coordinates", "", "Lcom/mapbox/geojson/Point;", "camera", "coordinatesPadding", "Lcom/mapbox/maps/EdgeInsets;", "maxZoom", "", "offset", "Lcom/mapbox/maps/ScreenCoordinate;", "(Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;Ljava/util/List;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "maps-sdk_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class MapCameraManagerDelegateExtKt {
    public static Object awaitCameraForCoordinates$default(MapCameraManagerDelegate mapCameraManagerDelegate, List list, CameraOptions cameraOptions, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            edgeInsets = null;
        }
        if ((i & 8) != 0) {
            d = null;
        }
        if ((i & 16) != 0) {
            screenCoordinate = null;
        }
        return awaitCameraForCoordinates(mapCameraManagerDelegate, list, cameraOptions, edgeInsets, d, screenCoordinate, continuation);
    }

    public static final Object awaitCameraForCoordinates(MapCameraManagerDelegate mapCameraManagerDelegate, List list, CameraOptions cameraOptions, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate, Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        mapCameraManagerDelegate.cameraForCoordinates(list, cameraOptions, edgeInsets, d, screenCoordinate, new MapCameraManagerDelegateExtKt$awaitCameraForCoordinates$2$1(safeContinuation));
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }
}
