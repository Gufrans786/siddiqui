package com.mapbox.maps.extension.style.precipitations.generated;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a!\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0007¨\u0006\u0007"}, d2 = {"rain", "Lcom/mapbox/maps/extension/style/precipitations/generated/Rain;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/precipitations/generated/RainDslReceiver;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class RainKt {
    public static final Rain rain(Function1<? super RainDslReceiver, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Rain rain = new Rain();
        block.invoke(rain);
        return rain;
    }
}
