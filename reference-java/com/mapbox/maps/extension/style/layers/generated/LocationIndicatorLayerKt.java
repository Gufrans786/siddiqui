package com.mapbox.maps.extension.style.layers.generated;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"locationIndicatorLayer", "Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayer;", "layerId", "", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayerDsl;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class LocationIndicatorLayerKt {
    public static final LocationIndicatorLayer locationIndicatorLayer(String layerId, Function1<? super LocationIndicatorLayerDsl, Unit> block) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(block, "block");
        LocationIndicatorLayer locationIndicatorLayer = new LocationIndicatorLayer(layerId);
        block.invoke(locationIndicatorLayer);
        return locationIndicatorLayer;
    }
}
