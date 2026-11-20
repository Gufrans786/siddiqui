package com.mapbox.maps.extension.style.types;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"transitionOptions", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class StyleTransitionKt {
    public static final StyleTransition transitionOptions(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        return builder.build();
    }
}
