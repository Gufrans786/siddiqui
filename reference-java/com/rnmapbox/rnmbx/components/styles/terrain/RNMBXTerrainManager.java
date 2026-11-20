package com.rnmapbox.rnmbx.components.styles.terrain;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXTerrainManagerInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0013B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0014J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0017J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000fH\u0017¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/terrain/RNMBXTerrainManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/styles/terrain/RNMBXTerrain;", "Lcom/facebook/react/viewmanagers/RNMBXTerrainManagerInterface;", "<init>", "()V", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setSourceID", "", "layer", "sourceID", "Lcom/facebook/react/bridge/Dynamic;", "setReactStyle", "terrain", "reactStyle", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXTerrainManager extends ViewGroupManager<RNMBXTerrain> implements RNMBXTerrainManagerInterface<RNMBXTerrain> {
    public static final String REACT_CLASS = "RNMBXTerrain";

    public RNMBXTerrainManager() {
        super(null, 1, null);
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXTerrain createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXTerrain(reactContext);
    }

    @Override
    @ReactProp(name = "sourceID")
    public void setSourceID(RNMBXTerrain layer, Dynamic sourceID) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(sourceID, "sourceID");
        layer.setSourceID(sourceID.asString());
    }

    @Override
    @ReactProp(name = "reactStyle")
    public void setReactStyle(RNMBXTerrain terrain, Dynamic reactStyle) throws Exception {
        Intrinsics.checkNotNullParameter(terrain, "terrain");
        Intrinsics.checkNotNullParameter(reactStyle, "reactStyle");
        terrain.setReactStyle(reactStyle.asMap());
    }
}
