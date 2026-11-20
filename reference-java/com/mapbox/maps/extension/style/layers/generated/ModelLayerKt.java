package com.mapbox.maps.extension.style.layers.generated;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0007¨\u0006\n"}, d2 = {"modelLayer", "Lcom/mapbox/maps/extension/style/layers/generated/ModelLayer;", "layerId", "", "sourceId", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/layers/generated/ModelLayerDsl;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ModelLayerKt {
    public static final ModelLayer modelLayer(String layerId, String sourceId, Function1<? super ModelLayerDsl, Unit> block) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(block, "block");
        ModelLayer modelLayer = new ModelLayer(layerId, sourceId);
        block.invoke(modelLayer);
        return modelLayer;
    }
}
