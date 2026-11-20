package com.rnmapbox.rnmbx.components.styles.model;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import java.net.URI;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0002R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/model/RNMBXModels;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", ModelSourceWrapper.MODELS, "", "", "setModels", "", "value", "addToMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "applyModels", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXModels extends AbstractMapFeature {
    private Map<String, String> models;

    public RNMBXModels(Context context) {
        super(context);
    }

    public final void setModels(Map<String, String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.models = value;
        applyModels();
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        applyModels();
    }

    private final void applyModels() {
        MapView mapView;
        MapboxMap mapboxMapDeprecated;
        Style styleDeprecated;
        Map<String, String> map;
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null || (mapView = mMapView.getMapView()) == null || (mapboxMapDeprecated = mapView.getMapboxMapDeprecated()) == null || (styleDeprecated = mapboxMapDeprecated.getStyleDeprecated()) == null || (map = this.models) == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            URI uriCreate = URI.create(entry.getValue());
            String string = new URI(uriCreate.getScheme(), uriCreate.getUserInfo(), uriCreate.getHost(), uriCreate.getPort(), uriCreate.getPath(), null, uriCreate.getFragment()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            styleDeprecated.addStyleModel(key, string);
        }
    }
}
