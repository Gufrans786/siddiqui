package com.rnmapbox.rnmbx.components.styles.layers;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.extension.style.layers.generated.RasterLayer;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\f¨\u0006\r"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterLayer;", "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "makeLayer", "addStyles", "", "setSourceLayerID", "asString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXRasterLayer extends RNMBXLayer<RasterLayer> {
    public final void setSourceLayerID(String asString) {
    }

    public RNMBXRasterLayer(Context context) {
        super(context);
        Intrinsics.checkNotNull(context);
    }

    @Override
    public RasterLayer makeLayer() {
        String id = getID();
        Intrinsics.checkNotNull(id);
        String str = this.mSourceID;
        Intrinsics.checkNotNull(str);
        return new RasterLayer(id, str);
    }

    @Override
    public void addStyles() throws Exception {
        RasterLayer mLayer = getMLayer();
        if (mLayer != null) {
            RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            ReadableMap readableMap = this.mReactStyle;
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            rNMBXStyleFactory.setRasterLayerStyle(mLayer, new RNMBXStyle(context, readableMap, mapboxMap));
            return;
        }
        Logger.INSTANCE.e(RNMBXRasterLayerManager.REACT_CLASS, "mLayer is null");
    }
}
