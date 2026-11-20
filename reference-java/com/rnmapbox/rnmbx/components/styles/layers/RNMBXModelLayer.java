package com.rnmapbox.rnmbx.components.styles.layers;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.extension.style.layers.generated.ModelLayer;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\n\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXModelLayer;", "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/ModelLayer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mSourceLayerID", "", "makeLayer", "addStyles", "", "setSourceLayerID", "value", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXModelLayer extends RNMBXLayer<ModelLayer> {
    private String mSourceLayerID;

    public RNMBXModelLayer(Context context) {
        super(context);
        Intrinsics.checkNotNull(context);
    }

    @Override
    public ModelLayer makeLayer() {
        String id = getID();
        Intrinsics.checkNotNull(id);
        String str = this.mSourceID;
        Intrinsics.checkNotNull(str);
        ModelLayer modelLayer = new ModelLayer(id, str);
        String str2 = this.mSourceLayerID;
        if (str2 != null) {
            Intrinsics.checkNotNull(str2);
            modelLayer.sourceLayer(str2);
        }
        return modelLayer;
    }

    @Override
    public void addStyles() throws Exception {
        ModelLayer mLayer = getMLayer();
        if (mLayer != null) {
            RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            ReadableMap readableMap = this.mReactStyle;
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            rNMBXStyleFactory.setModelLayerStyle(mLayer, new RNMBXStyle(context, readableMap, mapboxMap));
            return;
        }
        Logger.INSTANCE.e(RNMBXLineLayerManager.REACT_CLASS, "mLayer is null");
    }

    public final void setSourceLayerID(String value) {
        if (value == null) {
            Logger.INSTANCE.e(RNMBXModelLayerManager.REACT_CLASS, "setSourceLayerID: sourceLayerID is null");
        } else {
            this.mSourceLayerID = value;
        }
    }
}
