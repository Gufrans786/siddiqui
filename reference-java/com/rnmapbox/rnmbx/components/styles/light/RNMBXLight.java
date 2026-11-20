package com.rnmapbox.rnmbx.components.styles.light;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.light.generated.FlatLight;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.v11compat.light.LightKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\tJ\u0014\u0010\u0014\u001a\u00020\u000b2\n\u0010\u0015\u001a\u00060\u0016j\u0002`\u0017H\u0002J\b\u0010\u0014\u001a\u00020\u000bH\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/light/RNMBXLight;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mMap", "Lcom/mapbox/maps/MapboxMap;", "mReactStyle", "Lcom/facebook/react/bridge/ReadableMap;", "addToMap", "", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "setReactStyle", "reactStyle", "setLight", "light", "Lcom/mapbox/maps/extension/style/light/generated/FlatLight;", "Lcom/rnmapbox/rnmbx/v11compat/light/Light;", "style", "Lcom/mapbox/maps/Style;", "getStyle", "()Lcom/mapbox/maps/Style;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXLight extends AbstractMapFeature {
    private MapboxMap mMap;
    private ReadableMap mReactStyle;

    public RNMBXLight(Context context) {
        super(context);
    }

    @Override
    public void addToMap(RNMBXMapView mapView) throws Exception {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        this.mMap = mapView.getMapboxMap();
        setLight();
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        return super.removeFromMap(mapView, reason);
    }

    public final void setReactStyle(ReadableMap reactStyle) throws Exception {
        this.mReactStyle = reactStyle;
        setLight();
    }

    private final void setLight(FlatLight light) throws Exception {
        RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ReadableMap readableMap = this.mReactStyle;
        Intrinsics.checkNotNull(readableMap);
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        rNMBXStyleFactory.setLightLayerStyle(light, new RNMBXStyle(context, readableMap, mapboxMap));
        Style style = getStyle();
        Intrinsics.checkNotNull(style);
        LightKt.setLight(style, light);
    }

    private final void setLight() throws Exception {
        if (getStyle() != null) {
            setLight(LightKt.createLight());
        }
    }

    private final Style getStyle() {
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            return null;
        }
        Intrinsics.checkNotNull(mapboxMap);
        return mapboxMap.getStyleDeprecated();
    }
}
