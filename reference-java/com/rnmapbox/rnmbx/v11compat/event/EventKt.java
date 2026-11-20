package com.rnmapbox.rnmbx.v11compat.event;

import com.mapbox.maps.MapboxMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a \u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¨\u0006\u000b"}, d2 = {"getMapLoadingErrorEventData", "Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;", "Lcom/rnmapbox/rnmbx/v11compat/event/Event;", "subscribe", "", "Lcom/mapbox/maps/MapboxMap;", "observer", "Lcom/rnmapbox/rnmbx/v11compat/event/Observer;", "events", "", "", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class EventKt {
    public static final void subscribe(MapboxMap mapboxMap, Observer observer, List<String> events) {
        Intrinsics.checkNotNullParameter(mapboxMap, "<this>");
        Intrinsics.checkNotNullParameter(observer, "observer");
        Intrinsics.checkNotNullParameter(events, "events");
    }

    public static final MapLoadingErrorEventData getMapLoadingErrorEventData(Event event) {
        Intrinsics.checkNotNullParameter(event, "<this>");
        return new MapLoadingErrorEventData("n/a");
    }
}
