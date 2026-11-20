package com.rnmapbox.rnmbx.components.camera;

import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002¨\u0006\u0005"}, d2 = {"isKeep", "", "Lcom/facebook/react/bridge/ReadableMap;", "s", "", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXViewportKt {
    public static final boolean isKeep(ReadableMap readableMap, String str) {
        return readableMap.getType(str) == ReadableType.String && Intrinsics.areEqual(readableMap.getString(str), "keep");
    }
}
