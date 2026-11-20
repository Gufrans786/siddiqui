package com.mapbox.maps.coroutine;

import com.mapbox.bindgen.Expected;
import com.mapbox.maps.QueriedRenderedFeature;
import com.mapbox.maps.QueriedSourceFeature;
import com.mapbox.maps.QueryRenderedFeaturesCallback;
import com.mapbox.maps.QuerySourceFeaturesCallback;
import com.mapbox.maps.RenderedQueryGeometry;
import com.mapbox.maps.RenderedQueryOptions;
import com.mapbox.maps.SourceQueryOptions;
import com.mapbox.maps.UtilsKt$suspendMapboxCancellableCoroutine$2$1;
import com.mapbox.maps.plugin.delegates.MapFeatureQueryDelegate;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a7\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\n\u001a7\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00030\u0001*\u00020\u00052\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u000eH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"queryRenderedFeatures", "Lcom/mapbox/bindgen/Expected;", "", "", "Lcom/mapbox/maps/QueriedRenderedFeature;", "Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;", "geometry", "Lcom/mapbox/maps/RenderedQueryGeometry;", "options", "Lcom/mapbox/maps/RenderedQueryOptions;", "(Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;Lcom/mapbox/maps/RenderedQueryGeometry;Lcom/mapbox/maps/RenderedQueryOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "querySourceFeatures", "Lcom/mapbox/maps/QueriedSourceFeature;", "sourceId", "Lcom/mapbox/maps/SourceQueryOptions;", "(Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;Ljava/lang/String;Lcom/mapbox/maps/SourceQueryOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "maps-sdk_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class MapFeatureQueryDelegateExtKt {
    public static final Object queryRenderedFeatures(MapFeatureQueryDelegate mapFeatureQueryDelegate, RenderedQueryGeometry renderedQueryGeometry, RenderedQueryOptions renderedQueryOptions, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapFeatureQueryDelegate.queryRenderedFeatures(renderedQueryGeometry, renderedQueryOptions, new QueryRenderedFeaturesCallback() {
            @Override
            public final void run(Expected<String, List<QueriedRenderedFeature>> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, List<QueriedRenderedFeature>>> continuation2 = cancellableContinuationImpl3;
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

    public static final Object querySourceFeatures(MapFeatureQueryDelegate mapFeatureQueryDelegate, String str, SourceQueryOptions sourceQueryOptions, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(mapFeatureQueryDelegate.querySourceFeatures(str, sourceQueryOptions, new QuerySourceFeaturesCallback() {
            @Override
            public final void run(Expected<String, List<QueriedSourceFeature>> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Continuation<Expected<String, List<QueriedSourceFeature>>> continuation2 = cancellableContinuationImpl3;
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
