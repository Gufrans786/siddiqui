package com.rnmapbox.rnmbx.components.styles.layers;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.generated.FillExtrusionLayer;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u0012\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXFillExtrusionLayer;", "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mSourceLayerID", "", "updateFilter", "", "expression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "addToMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "makeLayer", "addStyles", "setSourceLayerID", "sourceLayerID", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXFillExtrusionLayer extends RNMBXLayer<FillExtrusionLayer> {
    private String mSourceLayerID;

    public RNMBXFillExtrusionLayer(Context context) {
        super(context);
        Intrinsics.checkNotNull(context);
    }

    @Override
    protected void updateFilter(Expression expression) {
        FillExtrusionLayer mLayer = getMLayer();
        Intrinsics.checkNotNull(mLayer);
        Intrinsics.checkNotNull(expression);
        mLayer.filter(expression);
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
    }

    @Override
    public FillExtrusionLayer makeLayer() {
        String id = getID();
        Intrinsics.checkNotNull(id);
        String str = this.mSourceID;
        Intrinsics.checkNotNull(str);
        FillExtrusionLayer fillExtrusionLayer = new FillExtrusionLayer(id, str);
        String str2 = this.mSourceLayerID;
        if (str2 != null) {
            Intrinsics.checkNotNull(str2);
            fillExtrusionLayer.sourceLayer(str2);
        }
        return fillExtrusionLayer;
    }

    @Override
    public void addStyles() throws Exception {
        FillExtrusionLayer mLayer = getMLayer();
        if (mLayer != null) {
            RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            ReadableMap readableMap = this.mReactStyle;
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            rNMBXStyleFactory.setFillExtrusionLayerStyle(mLayer, new RNMBXStyle(context, readableMap, mapboxMap));
            return;
        }
        Logger.INSTANCE.e(RNMBXFillExtrusionLayerManager.REACT_CLASS, "Layer is null");
    }

    public final void setSourceLayerID(String sourceLayerID) {
        this.mSourceLayerID = sourceLayerID;
        if (getMLayer() != null) {
            FillExtrusionLayer mLayer = getMLayer();
            Intrinsics.checkNotNull(mLayer);
            String str = this.mSourceLayerID;
            Intrinsics.checkNotNull(str);
            mLayer.sourceLayer(str);
        }
    }
}
