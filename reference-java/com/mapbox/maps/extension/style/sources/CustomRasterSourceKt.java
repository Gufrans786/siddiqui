package com.mapbox.maps.extension.style.sources;

import com.mapbox.maps.CustomRasterSourceOptions;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0007¨\u0006\t"}, d2 = {"customRasterSource", "Lcom/mapbox/maps/extension/style/sources/CustomRasterSource;", "id", "", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/CustomRasterSourceOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class CustomRasterSourceKt {
    public static final CustomRasterSource customRasterSource(String id, Function1<? super CustomRasterSourceOptions.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(block, "block");
        CustomRasterSourceOptions.Builder builder = new CustomRasterSourceOptions.Builder();
        block.invoke(builder);
        CustomRasterSourceOptions customRasterSourceOptionsBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(customRasterSourceOptionsBuild, "Builder().apply(block).build()");
        return new CustomRasterSource(id, customRasterSourceOptionsBuild);
    }
}
