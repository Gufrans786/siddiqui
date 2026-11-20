package com.mapbox.maps.plugin;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00112\u00020\u0001:\u0003\u0011\u0012\u0013B\u0019\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0001\u0002\u0014\u0015¨\u0006\u0016"}, d2 = {"Lcom/mapbox/maps/plugin/Plugin;", "", "id", "", "instance", "Lcom/mapbox/maps/plugin/MapPlugin;", "(Ljava/lang/String;Lcom/mapbox/maps/plugin/MapPlugin;)V", "getId", "()Ljava/lang/String;", "getInstance", "()Lcom/mapbox/maps/plugin/MapPlugin;", "equals", "", "other", "hashCode", "", "toString", "Companion", TypedValues.Custom.NAME, "Mapbox", "Lcom/mapbox/maps/plugin/Plugin$Custom;", "Lcom/mapbox/maps/plugin/Plugin$Mapbox;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class Plugin {
    public static final String MAPBOX_ANNOTATION_PLUGIN_ID = "MAPBOX_ANNOTATION_PLUGIN_ID";
    public static final String MAPBOX_ATTRIBUTION_PLUGIN_ID = "MAPBOX_ATTRIBUTION_PLUGIN_ID";
    public static final String MAPBOX_CAMERA_PLUGIN_ID = "MAPBOX_CAMERA_PLUGIN_ID";
    public static final String MAPBOX_COMPASS_PLUGIN_ID = "MAPBOX_COMPASS_PLUGIN_ID";
    public static final String MAPBOX_GESTURES_PLUGIN_ID = "MAPBOX_GESTURES_PLUGIN_ID";
    public static final String MAPBOX_LIFECYCLE_PLUGIN_ID = "MAPBOX_LIFECYCLE_PLUGIN_ID";
    public static final String MAPBOX_LOCATION_COMPONENT_PLUGIN_ID = "MAPBOX_LOCATION_COMPONENT_PLUGIN_ID";
    public static final String MAPBOX_LOGO_PLUGIN_ID = "MAPBOX_LOGO_PLUGIN_ID";
    public static final String MAPBOX_MAP_OVERLAY_PLUGIN_ID = "MAPBOX_MAP_OVERLAY_PLUGIN_ID";
    public static final String MAPBOX_SCALEBAR_PLUGIN_ID = "MAPBOX_SCALEBAR_PLUGIN_ID";
    public static final String MAPBOX_VIEWPORT_PLUGIN_ID = "MAPBOX_VIEWPORT_PLUGIN_ID";
    private final String id;
    private final MapPlugin instance;

    public Plugin(String str, MapPlugin mapPlugin, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, mapPlugin);
    }

    private Plugin(String str, MapPlugin mapPlugin) {
        this.id = str;
        this.instance = mapPlugin;
    }

    public final String getId() {
        return this.id;
    }

    public final MapPlugin getInstance() {
        return this.instance;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/Plugin$Mapbox;", "Lcom/mapbox/maps/plugin/Plugin;", "id", "", "(Ljava/lang/String;)V", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Mapbox extends Plugin {
        public Mapbox(String id) {
            super(id, null, 0 == true ? 1 : 0);
            Intrinsics.checkNotNullParameter(id, "id");
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/mapbox/maps/plugin/Plugin$Custom;", "Lcom/mapbox/maps/plugin/Plugin;", "id", "", "instance", "Lcom/mapbox/maps/plugin/MapPlugin;", "(Ljava/lang/String;Lcom/mapbox/maps/plugin/MapPlugin;)V", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Custom extends Plugin {
        public Custom(String id, MapPlugin instance) {
            super(id, instance, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(instance, "instance");
        }
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder("pluginId = ").append(this.id).append(", pluginInstance = ");
        MapPlugin mapPlugin = this.instance;
        return sbAppend.append(mapPlugin != null ? mapPlugin.getClass() : null).toString();
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return other != null && Intrinsics.areEqual(getClass(), other.getClass()) && Intrinsics.areEqual(((Plugin) other).id, this.id);
    }

    public int hashCode() {
        return this.id.hashCode() + 31;
    }
}
