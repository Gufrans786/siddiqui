package com.mapbox.maps.extension.style.sources.generated;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"geoJsonSource", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;", "id", "", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource$Builder;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class GeoJsonSourceKt {
    public static final GeoJsonSource geoJsonSource(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new GeoJsonSource.Builder(id).build();
    }

    public static final GeoJsonSource geoJsonSource(String id, Function1<? super GeoJsonSource.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(block, "block");
        GeoJsonSource.Builder builder = new GeoJsonSource.Builder(id);
        block.invoke(builder);
        return builder.build();
    }
}
