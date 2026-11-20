package com.rnmapbox.rnmbx.components.styles.sources;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXRasterDemSourceManagerInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0015B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0017J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterDemSourceManager;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSourceManager;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterDemSource;", "Lcom/facebook/react/viewmanagers/RNMBXRasterDemSourceManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "customEvents", "", "", "getName", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setExisting", "", "view", "value", "Lcom/facebook/react/bridge/Dynamic;", "setTileSize", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXRasterDemSourceManager extends RNMBXTileSourceManager<RNMBXRasterDemSource> implements RNMBXRasterDemSourceManagerInterface<RNMBXRasterDemSource> {
    public static final String LOG_TAG = "RNMBXRasterDemSourceManager";
    public static final String REACT_CLASS = "RNMBXRasterDemSource";
    private final ReactApplicationContext mContext;

    @Override
    public void setId(View view, Dynamic dynamic) {
        setId((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setMaxZoomLevel(View view, Dynamic dynamic) {
        setMaxZoomLevel((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setMinZoomLevel(View view, Dynamic dynamic) {
        setMinZoomLevel((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setTileUrlTemplates(View view, Dynamic dynamic) {
        setTileUrlTemplates((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setUrl(View view, Dynamic dynamic) {
        setUrl((RNMBXTileSource) view, dynamic);
    }

    public RNMBXRasterDemSourceManager(ReactApplicationContext mContext) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    @Override
    public Map<String, String> customEvents() {
        return MapBuilder.builder().build();
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXRasterDemSource createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXRasterDemSource(reactContext, this);
    }

    @Override
    @ReactProp(name = "existing")
    public void setExisting(RNMBXRasterDemSource view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(value, "value");
        view.setMExisting(Boolean.valueOf(value.asBoolean()));
    }

    @Override
    @ReactProp(name = "tileSize")
    public void setTileSize(RNMBXRasterDemSource view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(value, "value");
        view.setTileSize(value.asInt());
    }
}
