package com.rnmapbox.rnmbx.rncompat.readable_map;

import com.facebook.react.bridge.ReadableMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010(\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001*\u00020\u0005¨\u0006\u0006"}, d2 = {"getEntryIterator", "", "", "", "", "Lcom/facebook/react/bridge/ReadableMap;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ReadableMapKt {
    public static final Iterator<Map.Entry<String, Object>> getEntryIterator(ReadableMap readableMap) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        return readableMap.getEntryIterator();
    }
}
