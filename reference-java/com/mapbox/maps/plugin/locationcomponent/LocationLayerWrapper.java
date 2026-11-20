package com.mapbox.maps.plugin.locationcomponent;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.MapboxLocationComponentException;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0010\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u0015\u001a\u00020\tJ\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\tH\u0004J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R6\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t`\nX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerWrapper;", "", "layerId", "", "(Ljava/lang/String;)V", "getLayerId", "()Ljava/lang/String;", "layerProperties", "Ljava/util/HashMap;", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "getLayerProperties", "()Ljava/util/HashMap;", "setLayerProperties", "(Ljava/util/HashMap;)V", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "bindTo", "", "position", "Lcom/mapbox/maps/LayerPosition;", "toValue", "updateProperty", "propertyName", "value", "updateStyle", "visibility", "", "Companion", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class LocationLayerWrapper {
    private static final String TAG = "MapboxLocationLayerWrapper";
    private final String layerId;
    private HashMap<String, Value> layerProperties;
    private MapboxStyleManager style;

    public LocationLayerWrapper(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        this.layerId = layerId;
        this.layerProperties = new HashMap<>();
    }

    public final String getLayerId() {
        return this.layerId;
    }

    protected final HashMap<String, Value> getLayerProperties() {
        return this.layerProperties;
    }

    protected final void setLayerProperties(HashMap<String, Value> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.layerProperties = map;
    }

    public final void updateStyle(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
    }

    public static void bindTo$default(LocationLayerWrapper locationLayerWrapper, MapboxStyleManager mapboxStyleManager, LayerPosition layerPosition, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bindTo");
        }
        if ((i & 2) != 0) {
            layerPosition = null;
        }
        locationLayerWrapper.bindTo(mapboxStyleManager, layerPosition);
    }

    public final void bindTo(MapboxStyleManager style, LayerPosition position) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
        String error = style.addPersistentStyleLayer(toValue(), position).getError();
        if (error != null) {
            throw new MapboxLocationComponentException("Add layer failed: " + error);
        }
    }

    protected final void updateProperty(String propertyName, Value value) {
        String error;
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        Intrinsics.checkNotNullParameter(value, "value");
        this.layerProperties.put(propertyName, value);
        MapboxStyleManager mapboxStyleManager = this.style;
        if (mapboxStyleManager == null || (error = mapboxStyleManager.setStyleLayerProperty(this.layerId, propertyName, value).getError()) == null) {
            return;
        }
        MapboxLogger.logE(TAG, "Set layer property \"" + propertyName + "\" failed:\nError: " + error + "\nValue set: " + value);
    }

    public final Value toValue() {
        return new Value(this.layerProperties);
    }

    public final void visibility(boolean visibility) {
        updateProperty("visibility", new Value(visibility ? ViewProps.VISIBLE : "none"));
    }
}
