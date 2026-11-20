package com.rnmapbox.rnmbx.components.styles.layers;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.extension.style.layers.generated.BackgroundLayer;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXBackgroundLayer;", "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/BackgroundLayer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "makeLayer", "addStyles", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXBackgroundLayer extends RNMBXLayer<BackgroundLayer> {
    public RNMBXBackgroundLayer(Context context) {
        super(context);
        Intrinsics.checkNotNull(context);
    }

    @Override
    public BackgroundLayer makeLayer() {
        String id = getID();
        Intrinsics.checkNotNull(id);
        return new BackgroundLayer(id);
    }

    @Override
    public void addStyles() throws Exception {
        BackgroundLayer mLayer = getMLayer();
        if (mLayer != null) {
            RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            ReadableMap readableMap = this.mReactStyle;
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            rNMBXStyleFactory.setBackgroundLayerStyle(mLayer, new RNMBXStyle(context, readableMap, mapboxMap));
            return;
        }
        Logger.INSTANCE.e(RNMBXBackgroundLayerManager.REACT_CLASS, "mLayer is null");
    }
}
