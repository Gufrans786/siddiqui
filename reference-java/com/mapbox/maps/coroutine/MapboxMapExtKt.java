package com.mapbox.maps.coroutine;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Feature;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.FeatureExtensionValue;
import com.mapbox.maps.FeatureStateOperationCallback;
import com.mapbox.maps.GenericEvent;
import com.mapbox.maps.GenericEventCallback;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.QueryFeatureExtensionCallback;
import com.mapbox.maps.QueryFeatureStateCallback;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.UtilsKt$suspendMapboxCancellableCoroutine$2$1;
import com.mapbox.maps.extension.style.StyleContract;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

@Metadata(d1 = {"\u0000ò\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u001d\u00102\u001a\u000203*\u00020\u00032\u0006\u00104\u001a\u000205H\u0086@ø\u0001\u0000¢\u0006\u0002\u00106\u001a\u001d\u00102\u001a\u000203*\u00020\u00032\u0006\u00107\u001a\u000208H\u0086@ø\u0001\u0000¢\u0006\u0002\u00109\u001a\u0015\u0010:\u001a\u000203*\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010;\u001aO\u0010<\u001a\u00020=*\u00020\u00032\f\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?2\u0006\u0010A\u001a\u00020=2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010E2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010GH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010H\u001a\u001a\u0010I\u001a\b\u0012\u0004\u0012\u00020J0\u0001*\u00020\u00032\u0006\u0010K\u001a\u000208H\u0007\u001a=\u0010L\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020N0M*\u00020\u00032\u0006\u0010O\u001a\u0002082\n\b\u0002\u0010P\u001a\u0004\u0018\u0001082\u0006\u0010Q\u001a\u000208H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010R\u001a1\u0010S\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020T0M*\u00020\u00032\u0006\u0010U\u001a\u0002082\u0006\u0010V\u001a\u00020WH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010X\u001a1\u0010Y\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020T0M*\u00020\u00032\u0006\u0010U\u001a\u0002082\u0006\u0010V\u001a\u00020WH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010X\u001aA\u0010Z\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020T0M*\u00020\u00032\u0006\u0010U\u001a\u0002082\u0006\u0010V\u001a\u00020W2\u0006\u0010[\u001a\u00020\\2\u0006\u0010F\u001a\u00020\\H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010]\u001aI\u0010^\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020_0M*\u00020\u00032\u0006\u0010O\u001a\u0002082\n\b\u0002\u0010P\u001a\u0004\u0018\u0001082\u0006\u0010Q\u001a\u0002082\n\b\u0002\u0010`\u001a\u0004\u0018\u000108H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010a\u001a5\u0010b\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020_0M*\u00020\u00032\u0006\u0010O\u001a\u0002082\n\b\u0002\u0010P\u001a\u0004\u0018\u000108H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010c\u001aE\u0010d\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020_0M*\u00020\u00032\u0006\u0010O\u001a\u0002082\n\b\u0002\u0010P\u001a\u0004\u0018\u0001082\u0006\u0010Q\u001a\u0002082\u0006\u0010e\u001a\u00020NH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010f\"$\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\n\u0010\u0007\"\u001b\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\r\u0010\u0007\"\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0007\"\u001b\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0007\"\u001b\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0007\"\u001b\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0007\"\u001b\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0007\"\u001b\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0007\"\u001b\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0007\"\u001b\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b%\u0010\u0007\"\u001b\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b(\u0010\u0007\"\u001b\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b+\u0010\u0007\"\u001b\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b.\u0010\u0007\"\u001b\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b1\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006g"}, d2 = {"cameraChangedCoalescedEvents", "Lkotlinx/coroutines/flow/Flow;", "Lcom/mapbox/maps/CameraChangedCoalesced;", "Lcom/mapbox/maps/MapboxMap;", "getCameraChangedCoalescedEvents$annotations", "(Lcom/mapbox/maps/MapboxMap;)V", "getCameraChangedCoalescedEvents", "(Lcom/mapbox/maps/MapboxMap;)Lkotlinx/coroutines/flow/Flow;", "cameraChangedEvents", "Lcom/mapbox/maps/CameraChanged;", "getCameraChangedEvents", "mapIdleEvents", "Lcom/mapbox/maps/MapIdle;", "getMapIdleEvents", "mapLoadedEvents", "Lcom/mapbox/maps/MapLoaded;", "getMapLoadedEvents", "mapLoadingErrorEvents", "Lcom/mapbox/maps/MapLoadingError;", "getMapLoadingErrorEvents", "renderFrameFinishedEvents", "Lcom/mapbox/maps/RenderFrameFinished;", "getRenderFrameFinishedEvents", "renderFrameStartedEvents", "Lcom/mapbox/maps/RenderFrameStarted;", "getRenderFrameStartedEvents", "resourceRequestEvents", "Lcom/mapbox/maps/ResourceRequest;", "getResourceRequestEvents", "sourceAddedEvents", "Lcom/mapbox/maps/SourceAdded;", "getSourceAddedEvents", "sourceDataLoadedEvents", "Lcom/mapbox/maps/SourceDataLoaded;", "getSourceDataLoadedEvents", "sourceRemovedEvents", "Lcom/mapbox/maps/SourceRemoved;", "getSourceRemovedEvents", "styleDataLoadedEvents", "Lcom/mapbox/maps/StyleDataLoaded;", "getStyleDataLoadedEvents", "styleImageMissingEvents", "Lcom/mapbox/maps/StyleImageMissing;", "getStyleImageMissingEvents", "styleImageRemoveUnusedEvents", "Lcom/mapbox/maps/StyleImageRemoveUnused;", "getStyleImageRemoveUnusedEvents", "styleLoadedEvents", "Lcom/mapbox/maps/StyleLoaded;", "getStyleLoadedEvents", "awaitLoadStyle", "Lcom/mapbox/maps/Style;", "styleExtension", "Lcom/mapbox/maps/extension/style/StyleContract$StyleExtension;", "(Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/extension/style/StyleContract$StyleExtension;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "style", "", "(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitStyle", "(Lcom/mapbox/maps/MapboxMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cameraForCoordinates", "Lcom/mapbox/maps/CameraOptions;", "coordinates", "", "Lcom/mapbox/geojson/Point;", "camera", "coordinatesPadding", "Lcom/mapbox/maps/EdgeInsets;", "maxZoom", "", "offset", "Lcom/mapbox/maps/ScreenCoordinate;", "(Lcom/mapbox/maps/MapboxMap;Ljava/util/List;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "genericEvents", "Lcom/mapbox/maps/GenericEvent;", "eventName", "getFeatureState", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/Value;", "sourceId", "sourceLayerId", "featureId", "(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getGeoJsonClusterChildren", "Lcom/mapbox/maps/FeatureExtensionValue;", "sourceIdentifier", "cluster", "Lcom/mapbox/geojson/Feature;", "(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Lcom/mapbox/geojson/Feature;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getGeoJsonClusterExpansionZoom", "getGeoJsonClusterLeaves", MapboxMap.QFE_LIMIT, "", "(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Lcom/mapbox/geojson/Feature;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeFeatureState", "Lcom/mapbox/bindgen/None;", "stateKey", "(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetFeatureStates", "(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setFeatureState", RemoteConfigConstants.ResponseFieldKey.STATE, "(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/bindgen/Value;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "maps-sdk_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class MapboxMapExtKt {
    public static void getCameraChangedCoalescedEvents$annotations(MapboxMap mapboxMap) {
    }

    public static final Object awaitStyle(MapboxMap mapboxMap, Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        mapboxMap.getStyle(new MapboxMapExtKt$awaitStyle$2$1(safeContinuation));
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public static final Object awaitLoadStyle(MapboxMap mapboxMap, StyleContract.StyleExtension styleExtension, Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        mapboxMap.loadStyle(styleExtension, new MapboxMapExtKt$awaitLoadStyle$2$1(safeContinuation));
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public static final Object awaitLoadStyle(MapboxMap mapboxMap, String str, Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        mapboxMap.loadStyle(str, new MapboxMapExtKt$awaitLoadStyle$4$1(safeContinuation));
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public static Object getFeatureState$default(MapboxMap mapboxMap, String str, String str2, String str3, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return getFeatureState(mapboxMap, str, str2, str3, continuation);
    }

    public static Object removeFeatureState$default(MapboxMap mapboxMap, String str, String str2, String str3, String str4, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 8) != 0) {
            str4 = null;
        }
        return removeFeatureState(mapboxMap, str, str2, str3, str4, continuation);
    }

    public static Object resetFeatureStates$default(MapboxMap mapboxMap, String str, String str2, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return resetFeatureStates(mapboxMap, str, str2, continuation);
    }

    public static Object setFeatureState$default(MapboxMap mapboxMap, String str, String str2, String str3, Value value, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return setFeatureState(mapboxMap, str, str2, str3, value, continuation);
    }

    public static final Flow getMapLoadedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$mapLoadedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getMapLoadingErrorEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$mapLoadingErrorEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getStyleLoadedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$styleLoadedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getStyleDataLoadedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$styleDataLoadedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getCameraChangedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$cameraChangedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getCameraChangedCoalescedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$cameraChangedCoalescedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getMapIdleEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$mapIdleEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getSourceAddedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$sourceAddedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getSourceRemovedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$sourceRemovedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getSourceDataLoadedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$sourceDataLoadedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getStyleImageMissingEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$styleImageMissingEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getStyleImageRemoveUnusedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$styleImageRemoveUnusedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getRenderFrameStartedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$renderFrameStartedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getRenderFrameFinishedEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$renderFrameFinishedEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    public static final Flow getResourceRequestEvents(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new MapboxMapExtKt$resourceRequestEvents$1(mapboxMap, null)), Dispatchers.getMain().getImmediate()));
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/mapbox/maps/GenericEvent;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.coroutine.MapboxMapExtKt$genericEvents$1", f = "MapboxMapExt.kt", i = {}, l = {TypedValues.CycleType.TYPE_WAVE_OFFSET}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<ProducerScope<? super GenericEvent>, Continuation<? super Unit>, Object> {
        final String $eventName;
        final MapboxMap $this_genericEvents;
        private Object L$0;
        int label;

        AnonymousClass1(MapboxMap mapboxMap, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_genericEvents = mapboxMap;
            this.$eventName = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_genericEvents, this.$eventName, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(ProducerScope<? super GenericEvent> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope = (ProducerScope) this.L$0;
                this.label = 1;
                if (ProduceKt.awaitClose(producerScope, new C00441(this.$this_genericEvents.getNativeObserver().subscribeGenericEvent(this.$eventName, new GenericEventCallback() {
                    @Override
                    public final void run(GenericEvent genericEvent) {
                        MapboxMapExtKt.AnonymousClass1.invokeSuspend$trySendBlocking(producerScope, genericEvent);
                    }
                }, new MapboxMapExtKt$genericEvents$1$cancelable$2(producerScope.getChannel()))), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        class C00441 extends FunctionReferenceImpl implements Function0<Unit> {
            C00441(Object obj) {
                super(0, obj, Cancelable.class, "cancel", "cancel()V", 0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                ((Cancelable) this.receiver).cancel();
            }
        }

        public static final void invokeSuspend$trySendBlocking(ProducerScope producerScope, GenericEvent genericEvent) {
            ChannelsKt.trySendBlocking(producerScope, genericEvent);
        }
    }

    public static final Flow genericEvents(MapboxMap mapboxMap, String eventName) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        return FlowKt.conflate(FlowKt.flowOn(FlowKt.callbackFlow(new AnonymousClass1(mapboxMap, eventName, null)), Dispatchers.getMain().getImmediate()));
    }

    public static Object cameraForCoordinates$default(MapboxMap mapboxMap, List list, CameraOptions cameraOptions, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            edgeInsets = null;
        }
        if ((i & 8) != 0) {
            d = null;
        }
        if ((i & 16) != 0) {
            screenCoordinate = null;
        }
        return cameraForCoordinates(mapboxMap, list, cameraOptions, edgeInsets, d, screenCoordinate, continuation);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated because extension is shadowed by non-suspend method", replaceWith = @ReplaceWith(expression = "awaitCameraForCoordinates(coordinates, camera, coordinatesPadding, maxZoom, offset)", imports = {}))
    public static final Object cameraForCoordinates(MapboxMap mapboxMap, List list, CameraOptions cameraOptions, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate, Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        mapboxMap.cameraForCoordinates(list, cameraOptions, edgeInsets, d, screenCoordinate, new MapboxMapExtKt$cameraForCoordinates$2$1(safeContinuation));
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public static final Object getGeoJsonClusterLeaves(MapboxMap mapboxMap, String str, Feature feature, long j, long j2, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapboxMap.getGeoJsonClusterLeaves(str, feature, j, j2, new QueryFeatureExtensionCallback() {
            @Override
            public final void run(Expected<String, FeatureExtensionValue> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, FeatureExtensionValue>> continuation2 = cancellableContinuationImpl3;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m1463constructorimpl(p0));
            }
        })));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object getGeoJsonClusterChildren(MapboxMap mapboxMap, String str, Feature feature, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapboxMap.getGeoJsonClusterChildren(str, feature, new QueryFeatureExtensionCallback() {
            @Override
            public final void run(Expected<String, FeatureExtensionValue> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, FeatureExtensionValue>> continuation2 = cancellableContinuationImpl3;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m1463constructorimpl(p0));
            }
        })));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object getGeoJsonClusterExpansionZoom(MapboxMap mapboxMap, String str, Feature feature, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapboxMap.getGeoJsonClusterExpansionZoom(str, feature, new QueryFeatureExtensionCallback() {
            @Override
            public final void run(Expected<String, FeatureExtensionValue> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, FeatureExtensionValue>> continuation2 = cancellableContinuationImpl3;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m1463constructorimpl(p0));
            }
        })));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object getFeatureState(MapboxMap mapboxMap, String str, String str2, String str3, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapboxMap.getFeatureState(str, str2, str3, new QueryFeatureStateCallback() {
            @Override
            public final void run(Expected<String, Value> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, Value>> continuation2 = cancellableContinuationImpl3;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m1463constructorimpl(p0));
            }
        })));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object removeFeatureState(MapboxMap mapboxMap, String str, String str2, String str3, String str4, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapboxMap.removeFeatureState(str, str2, str3, str4, new FeatureStateOperationCallback() {
            @Override
            public final void run(Expected<String, None> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, None>> continuation2 = cancellableContinuationImpl3;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m1463constructorimpl(p0));
            }
        })));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object resetFeatureStates(MapboxMap mapboxMap, String str, String str2, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapboxMap.resetFeatureStates(str, str2, new FeatureStateOperationCallback() {
            @Override
            public final void run(Expected<String, None> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, None>> continuation2 = cancellableContinuationImpl3;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m1463constructorimpl(p0));
            }
        })));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object setFeatureState(MapboxMap mapboxMap, String str, String str2, String str3, Value value, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapboxMap.setFeatureState(str, str2, str3, value, new FeatureStateOperationCallback() {
            @Override
            public final void run(Expected<String, None> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, None>> continuation2 = cancellableContinuationImpl3;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m1463constructorimpl(p0));
            }
        })));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
