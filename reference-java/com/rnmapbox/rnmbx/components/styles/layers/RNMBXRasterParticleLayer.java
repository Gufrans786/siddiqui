package com.rnmapbox.rnmbx.components.styles.layers;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.extension.style.layers.generated.RasterParticleLayer;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;", "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mSourceLayerID", "", "getMSourceLayerID", "()Ljava/lang/String;", "setMSourceLayerID", "(Ljava/lang/String;)V", "makeLayer", "addStyles", "", "setSourceLayerID", "sourceLayer", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXRasterParticleLayer extends RNMBXLayer<RasterParticleLayer> {
    private String mSourceLayerID;

    public RNMBXRasterParticleLayer(Context context) {
        super(context);
        Intrinsics.checkNotNull(context);
    }

    public final String getMSourceLayerID() {
        return this.mSourceLayerID;
    }

    public final void setMSourceLayerID(String str) {
        this.mSourceLayerID = str;
    }

    @Override
    public RasterParticleLayer makeLayer() {
        String id = getID();
        Intrinsics.checkNotNull(id);
        String str = this.mSourceID;
        Intrinsics.checkNotNull(str);
        RasterParticleLayer rasterParticleLayer = new RasterParticleLayer(id, str);
        String str2 = this.mSourceLayerID;
        if (str2 != null) {
            rasterParticleLayer.sourceLayer(str2);
        }
        return rasterParticleLayer;
    }

    @Override
    public void addStyles() throws Exception {
        RasterParticleLayer mLayer = getMLayer();
        if (mLayer != null) {
            RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            ReadableMap readableMap = this.mReactStyle;
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            rNMBXStyleFactory.setRasterParticleLayerStyle(mLayer, new RNMBXStyle(context, readableMap, mapboxMap));
            return;
        }
        Logger.INSTANCE.e(RNMBXRasterParticleLayerManager.REACT_CLASS, "mLayer is null");
    }

    public final void setSourceLayerID(String sourceLayer) {
        this.mSourceLayerID = sourceLayer;
        RasterParticleLayer mLayer = getMLayer();
        if (mLayer != null) {
            Intrinsics.checkNotNull(sourceLayer);
            mLayer.sourceLayer(sourceLayer);
        }
    }
}
