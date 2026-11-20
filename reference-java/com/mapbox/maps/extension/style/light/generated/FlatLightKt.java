package com.mapbox.maps.extension.style.light.generated;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a)\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"flatLight", "Lcom/mapbox/maps/extension/style/light/generated/FlatLight;", "id", "", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/light/generated/FlatLightDslReceiver;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class FlatLightKt {
    public static final FlatLight flatLight(String id, Function1<? super FlatLightDslReceiver, Unit> block) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(block, "block");
        FlatLight flatLight = new FlatLight(id);
        block.invoke(flatLight);
        return flatLight;
    }

    public static FlatLight flatLight$default(String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "flat";
        }
        return flatLight(str, function1);
    }
}
