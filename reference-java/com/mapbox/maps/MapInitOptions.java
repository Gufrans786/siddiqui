package com.mapbox.maps;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.mapbox.maps.plugin.Plugin;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b1\b\u0086\b\u0018\u0000 B2\u00020\u0001:\u0001BBk\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e¢\u0006\u0002\u0010\u0014J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\u000f\u00106\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u00108\u001a\u00020\fHÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010;\u001a\u00020\u0012HÆ\u0003J\t\u0010<\u001a\u00020\u000eHÆ\u0003Jo\u0010=\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u000eHÆ\u0001J\u0013\u0010>\u001a\u00020\f2\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020\u0012HÖ\u0001J\t\u0010A\u001a\u00020\u000eHÖ\u0001R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b/\u0010$R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u0006C"}, d2 = {"Lcom/mapbox/maps/MapInitOptions;", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mapOptions", "Lcom/mapbox/maps/MapOptions;", "plugins", "", "Lcom/mapbox/maps/plugin/Plugin;", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "textureView", "", "styleUri", "", "attrs", "Landroid/util/AttributeSet;", "antialiasingSampleCount", "", "mapName", "(Landroid/content/Context;Lcom/mapbox/maps/MapOptions;Ljava/util/List;Lcom/mapbox/maps/CameraOptions;ZLjava/lang/String;Landroid/util/AttributeSet;ILjava/lang/String;)V", "getAntialiasingSampleCount", "()I", "setAntialiasingSampleCount", "(I)V", "getAttrs", "()Landroid/util/AttributeSet;", "setAttrs", "(Landroid/util/AttributeSet;)V", "getCameraOptions", "()Lcom/mapbox/maps/CameraOptions;", "setCameraOptions", "(Lcom/mapbox/maps/CameraOptions;)V", "getContext", "()Landroid/content/Context;", "getMapName", "()Ljava/lang/String;", "setMapName", "(Ljava/lang/String;)V", "getMapOptions", "()Lcom/mapbox/maps/MapOptions;", "setMapOptions", "(Lcom/mapbox/maps/MapOptions;)V", "getPlugins", "()Ljava/util/List;", "setPlugins", "(Ljava/util/List;)V", "getStyleUri", "getTextureView", "()Z", "setTextureView", "(Z)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "Companion", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapInitOptions {

    public static final Companion INSTANCE = new Companion(null);
    private static final List<Plugin> defaultPluginList = CollectionsKt.listOf((Object[]) new Plugin.Mapbox[]{new Plugin.Mapbox(Plugin.MAPBOX_CAMERA_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_GESTURES_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_COMPASS_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_LOGO_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_ATTRIBUTION_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_LOCATION_COMPONENT_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_SCALEBAR_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_ANNOTATION_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_LIFECYCLE_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_MAP_OVERLAY_PLUGIN_ID), new Plugin.Mapbox(Plugin.MAPBOX_VIEWPORT_PLUGIN_ID)});
    private int antialiasingSampleCount;
    private AttributeSet attrs;
    private CameraOptions cameraOptions;
    private final Context context;
    private String mapName;
    private MapOptions mapOptions;
    private List<? extends Plugin> plugins;
    private final String styleUri;
    private boolean textureView;

    public MapInitOptions(Context context) {
        this(context, null, null, null, false, null, null, 0, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public MapInitOptions(Context context, MapOptions mapOptions) {
        this(context, mapOptions, null, null, false, null, null, 0, null, TypedValues.PositionType.TYPE_CURVE_FIT, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List<? extends Plugin> plugins) {
        this(context, mapOptions, plugins, null, false, null, null, 0, null, TypedValues.PositionType.TYPE_PERCENT_HEIGHT, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List<? extends Plugin> plugins, CameraOptions cameraOptions) {
        this(context, mapOptions, plugins, cameraOptions, false, null, null, 0, null, 496, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List<? extends Plugin> plugins, CameraOptions cameraOptions, boolean z) {
        this(context, mapOptions, plugins, cameraOptions, z, null, null, 0, null, 480, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List<? extends Plugin> plugins, CameraOptions cameraOptions, boolean z, String str) {
        this(context, mapOptions, plugins, cameraOptions, z, str, null, 0, null, 448, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List<? extends Plugin> plugins, CameraOptions cameraOptions, boolean z, String str, AttributeSet attributeSet) {
        this(context, mapOptions, plugins, cameraOptions, z, str, attributeSet, 0, null, BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List<? extends Plugin> plugins, CameraOptions cameraOptions, boolean z, String str, AttributeSet attributeSet, int i) {
        this(context, mapOptions, plugins, cameraOptions, z, str, attributeSet, i, null, 256, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
    }

    public static MapInitOptions copy$default(MapInitOptions mapInitOptions, Context context, MapOptions mapOptions, List list, CameraOptions cameraOptions, boolean z, String str, AttributeSet attributeSet, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            context = mapInitOptions.context;
        }
        if ((i2 & 2) != 0) {
            mapOptions = mapInitOptions.mapOptions;
        }
        if ((i2 & 4) != 0) {
            list = mapInitOptions.plugins;
        }
        if ((i2 & 8) != 0) {
            cameraOptions = mapInitOptions.cameraOptions;
        }
        if ((i2 & 16) != 0) {
            z = mapInitOptions.textureView;
        }
        if ((i2 & 32) != 0) {
            str = mapInitOptions.styleUri;
        }
        if ((i2 & 64) != 0) {
            attributeSet = mapInitOptions.attrs;
        }
        if ((i2 & 128) != 0) {
            i = mapInitOptions.antialiasingSampleCount;
        }
        if ((i2 & 256) != 0) {
            str2 = mapInitOptions.mapName;
        }
        int i3 = i;
        String str3 = str2;
        String str4 = str;
        AttributeSet attributeSet2 = attributeSet;
        boolean z2 = z;
        List list2 = list;
        return mapInitOptions.copy(context, mapOptions, list2, cameraOptions, z2, str4, attributeSet2, i3, str3);
    }

    public final Context getContext() {
        return this.context;
    }

    public final MapOptions getMapOptions() {
        return this.mapOptions;
    }

    public final List<Plugin> component3() {
        return this.plugins;
    }

    public final CameraOptions getCameraOptions() {
        return this.cameraOptions;
    }

    public final boolean getTextureView() {
        return this.textureView;
    }

    public final String getStyleUri() {
        return this.styleUri;
    }

    public final AttributeSet getAttrs() {
        return this.attrs;
    }

    public final int getAntialiasingSampleCount() {
        return this.antialiasingSampleCount;
    }

    public final String getMapName() {
        return this.mapName;
    }

    public final MapInitOptions copy(Context context, MapOptions mapOptions, List<? extends Plugin> plugins, CameraOptions cameraOptions, boolean textureView, String styleUri, AttributeSet attrs, int antialiasingSampleCount, String mapName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
        Intrinsics.checkNotNullParameter(mapName, "mapName");
        return new MapInitOptions(context, mapOptions, plugins, cameraOptions, textureView, styleUri, attrs, antialiasingSampleCount, mapName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MapInitOptions)) {
            return false;
        }
        MapInitOptions mapInitOptions = (MapInitOptions) other;
        return Intrinsics.areEqual(this.context, mapInitOptions.context) && Intrinsics.areEqual(this.mapOptions, mapInitOptions.mapOptions) && Intrinsics.areEqual(this.plugins, mapInitOptions.plugins) && Intrinsics.areEqual(this.cameraOptions, mapInitOptions.cameraOptions) && this.textureView == mapInitOptions.textureView && Intrinsics.areEqual(this.styleUri, mapInitOptions.styleUri) && Intrinsics.areEqual(this.attrs, mapInitOptions.attrs) && this.antialiasingSampleCount == mapInitOptions.antialiasingSampleCount && Intrinsics.areEqual(this.mapName, mapInitOptions.mapName);
    }

    public int hashCode() {
        int iHashCode = ((((this.context.hashCode() * 31) + this.mapOptions.hashCode()) * 31) + this.plugins.hashCode()) * 31;
        CameraOptions cameraOptions = this.cameraOptions;
        int iHashCode2 = (iHashCode + (cameraOptions == null ? 0 : cameraOptions.hashCode())) * 31;
        boolean z = this.textureView;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode2 + r1) * 31;
        String str = this.styleUri;
        int iHashCode3 = (i + (str == null ? 0 : str.hashCode())) * 31;
        AttributeSet attributeSet = this.attrs;
        return ((((iHashCode3 + (attributeSet != null ? attributeSet.hashCode() : 0)) * 31) + Integer.hashCode(this.antialiasingSampleCount)) * 31) + this.mapName.hashCode();
    }

    public String toString() {
        return "MapInitOptions(context=" + this.context + ", mapOptions=" + this.mapOptions + ", plugins=" + this.plugins + ", cameraOptions=" + this.cameraOptions + ", textureView=" + this.textureView + ", styleUri=" + this.styleUri + ", attrs=" + this.attrs + ", antialiasingSampleCount=" + this.antialiasingSampleCount + ", mapName=" + this.mapName + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List<? extends Plugin> plugins, CameraOptions cameraOptions, boolean z, String str, AttributeSet attributeSet, int i, String mapName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapOptions, "mapOptions");
        Intrinsics.checkNotNullParameter(plugins, "plugins");
        Intrinsics.checkNotNullParameter(mapName, "mapName");
        this.context = context;
        this.mapOptions = mapOptions;
        this.plugins = plugins;
        this.cameraOptions = cameraOptions;
        this.textureView = z;
        this.styleUri = str;
        this.attrs = attributeSet;
        this.antialiasingSampleCount = i;
        this.mapName = mapName;
    }

    public final Context getContext() {
        return this.context;
    }

    public MapInitOptions(Context context, MapOptions mapOptions, List list, CameraOptions cameraOptions, boolean z, String str, AttributeSet attributeSet, int i, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? INSTANCE.getDefaultMapOptions(context) : mapOptions, (i2 & 4) != 0 ? defaultPluginList : list, (i2 & 8) != 0 ? null : cameraOptions, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? Style.STANDARD : str, (i2 & 64) == 0 ? attributeSet : null, (i2 & 128) != 0 ? 1 : i, (i2 & 256) != 0 ? "" : str2);
    }

    public final MapOptions getMapOptions() {
        return this.mapOptions;
    }

    public final void setMapOptions(MapOptions mapOptions) {
        Intrinsics.checkNotNullParameter(mapOptions, "<set-?>");
        this.mapOptions = mapOptions;
    }

    public final List<Plugin> getPlugins() {
        return this.plugins;
    }

    public final void setPlugins(List<? extends Plugin> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.plugins = list;
    }

    public final CameraOptions getCameraOptions() {
        return this.cameraOptions;
    }

    public final void setCameraOptions(CameraOptions cameraOptions) {
        this.cameraOptions = cameraOptions;
    }

    public final boolean getTextureView() {
        return this.textureView;
    }

    public final void setTextureView(boolean z) {
        this.textureView = z;
    }

    public final String getStyleUri() {
        return this.styleUri;
    }

    public final AttributeSet getAttrs() {
        return this.attrs;
    }

    public final void setAttrs(AttributeSet attributeSet) {
        this.attrs = attributeSet;
    }

    public final int getAntialiasingSampleCount() {
        return this.antialiasingSampleCount;
    }

    public final void setAntialiasingSampleCount(int i) {
        this.antialiasingSampleCount = i;
    }

    public final String getMapName() {
        return this.mapName;
    }

    public final void setMapName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mapName = str;
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/mapbox/maps/MapInitOptions$Companion;", "", "()V", "defaultPluginList", "", "Lcom/mapbox/maps/plugin/Plugin;", "getDefaultPluginList", "()Ljava/util/List;", "getDefaultMapOptions", "Lcom/mapbox/maps/MapOptions;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MapOptions getDefaultMapOptions(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            MapOptions mapOptionsBuild = MapInitOptionsKt.applyDefaultParams(new MapOptions.Builder(), context).build();
            Intrinsics.checkNotNullExpressionValue(mapOptionsBuild, "Builder().applyDefaultParams(context).build()");
            return mapOptionsBuild;
        }

        public final List<Plugin> getDefaultPluginList() {
            return MapInitOptions.defaultPluginList;
        }
    }
}
