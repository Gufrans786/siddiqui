package com.rnmapbox.rnmbx.rncompat.dynamic;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"getType", "Lcom/facebook/react/bridge/ReadableType;", "Lcom/facebook/react/bridge/Dynamic;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DynamicKt {
    public static final ReadableType getType(Dynamic dynamic) {
        Intrinsics.checkNotNullParameter(dynamic, "<this>");
        return dynamic.getType();
    }
}
