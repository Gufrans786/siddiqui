package com.mapbox.maps.extension.style.layers;

import com.mapbox.maps.CustomLayerHost;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a5\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u001b\b\u0002\u0010\u0006\u001a\u0015\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0002\b\nH\u0007¨\u0006\u000b"}, d2 = {"customLayer", "Lcom/mapbox/maps/extension/style/layers/CustomLayer;", "layerId", "", "host", "Lcom/mapbox/maps/CustomLayerHost;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/layers/CustomLayerDsl;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class CustomLayerKt {
    public static final CustomLayer customLayer(String layerId, CustomLayerHost host) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(host, "host");
        return customLayer$default(layerId, host, null, 4, null);
    }

    public static CustomLayer customLayer$default(String str, CustomLayerHost customLayerHost, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = null;
        }
        return customLayer(str, customLayerHost, function1);
    }

    public static final CustomLayer customLayer(String layerId, CustomLayerHost host, Function1<? super CustomLayerDsl, Unit> function1) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(host, "host");
        if (function1 != null) {
            CustomLayer customLayer = new CustomLayer(layerId, host);
            function1.invoke(customLayer);
            return customLayer;
        }
        return new CustomLayer(layerId, host);
    }
}
