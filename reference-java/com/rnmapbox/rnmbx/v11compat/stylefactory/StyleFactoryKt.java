package com.rnmapbox.rnmbx.v11compat.stylefactory;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.generated.RasterLayer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0000\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"rasterColor", "", "Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;", "", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class StyleFactoryKt {
    public static final void rasterColor(RasterLayer rasterLayer, int i) {
        Intrinsics.checkNotNullParameter(rasterLayer, "<this>");
        rasterLayer.rasterColor(Expression.INSTANCE.color(i));
    }
}
