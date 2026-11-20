package com.rnmapbox.rnmbx.events.constants;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u0019"}, d2 = {"Lcom/rnmapbox/rnmbx/events/constants/EventKeys;", "", "value", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "MAP_CLICK", "MAP_LONG_CLICK", "MAP_ONCHANGE", "MAP_ON_LOCATION_CHANGE", "MAP_ANDROID_CALLBACK", "MAP_USER_TRACKING_MODE_CHANGE", "POINT_ANNOTATION_SELECTED", "POINT_ANNOTATION_DESELECTED", "POINT_ANNOTATION_DRAG_START", "POINT_ANNOTATION_DRAG", "POINT_ANNOTATION_DRAG_END", "SHAPE_SOURCE_LAYER_CLICK", "VECTOR_SOURCE_LAYER_CLICK", "RASTER_SOURCE_LAYER_CLICK", "IMAGES_MISSING", "USER_LOCATION_UPDATE", "VIEWPORT_STATUS_CHANGE", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum EventKeys {
    MAP_CLICK("topPress"),
    MAP_LONG_CLICK("topLongPress"),
    MAP_ONCHANGE("topMapChange"),
    MAP_ON_LOCATION_CHANGE("topLocationChange"),
    MAP_ANDROID_CALLBACK("topAndroidCallback"),
    MAP_USER_TRACKING_MODE_CHANGE("topUserTrackingModeChange"),
    POINT_ANNOTATION_SELECTED("topMapboxPointAnnotationSelected"),
    POINT_ANNOTATION_DESELECTED("topMapboxPointAnnotationDeselected"),
    POINT_ANNOTATION_DRAG_START("topMapboxPointAnnotationDragStart"),
    POINT_ANNOTATION_DRAG("topMapboxPointAnnotationDrag"),
    POINT_ANNOTATION_DRAG_END("topMapboxPointAnnotationDragEnd"),
    SHAPE_SOURCE_LAYER_CLICK("topMapboxShapeSourcePress"),
    VECTOR_SOURCE_LAYER_CLICK("topMapboxVectorSourcePress"),
    RASTER_SOURCE_LAYER_CLICK("topMapboxRasterSourcePress"),
    IMAGES_MISSING("topImageMissing"),
    USER_LOCATION_UPDATE(EventKeysKt.ns("user.location.update")),
    VIEWPORT_STATUS_CHANGE("topStatusChanged");

    private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final String value;

    public static EnumEntries<EventKeys> getEntries() {
        return $ENTRIES;
    }

    EventKeys(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
