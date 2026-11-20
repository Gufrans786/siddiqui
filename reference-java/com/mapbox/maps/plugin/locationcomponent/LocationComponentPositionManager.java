package com.mapbox.maps.plugin.locationcomponent;

import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.MapboxStyleManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001a\u0010\u0012\u001a\u00020\u00132\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPositionManager;", "", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "layerAbove", "", "layerBelow", "(Lcom/mapbox/maps/MapboxStyleManager;Ljava/lang/String;Ljava/lang/String;)V", "getLayerAbove$plugin_locationcomponent_release", "()Ljava/lang/String;", "setLayerAbove$plugin_locationcomponent_release", "(Ljava/lang/String;)V", "getLayerBelow$plugin_locationcomponent_release", "setLayerBelow$plugin_locationcomponent_release", "addLayerToMap", "", "layer", "Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerWrapper;", "update", "", "updateStyle", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationComponentPositionManager {
    private String layerAbove;
    private String layerBelow;
    private MapboxStyleManager style;

    public LocationComponentPositionManager(MapboxStyleManager style, String str, String str2) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
        this.layerAbove = str;
        this.layerBelow = str2;
    }

    public final String getLayerAbove() {
        return this.layerAbove;
    }

    public final void setLayerAbove$plugin_locationcomponent_release(String str) {
        this.layerAbove = str;
    }

    public final String getLayerBelow() {
        return this.layerBelow;
    }

    public final void setLayerBelow$plugin_locationcomponent_release(String str) {
        this.layerBelow = str;
    }

    public final boolean update(String layerAbove, String layerBelow) {
        String str;
        String str2;
        boolean z = (!Intrinsics.areEqual(this.layerAbove, layerAbove) && ((str2 = this.layerAbove) == null || !Intrinsics.areEqual(str2, layerAbove))) || (!Intrinsics.areEqual(this.layerBelow, layerBelow) && ((str = this.layerBelow) == null || !Intrinsics.areEqual(str, layerBelow)));
        this.layerAbove = layerAbove;
        this.layerBelow = layerBelow;
        return z;
    }

    public final void addLayerToMap(LocationLayerWrapper layer) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        if (this.layerAbove != null) {
            layer.bindTo(this.style, new LayerPosition(this.layerAbove, null, null));
        } else if (this.layerBelow != null) {
            layer.bindTo(this.style, new LayerPosition(null, this.layerBelow, null));
        } else {
            layer.bindTo(this.style, null);
        }
    }

    public final void updateStyle(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
    }
}
