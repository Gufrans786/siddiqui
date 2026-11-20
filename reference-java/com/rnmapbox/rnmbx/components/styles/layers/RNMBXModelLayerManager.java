package com.rnmapbox.rnmbx.components.styles.layers;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXModelLayerManagerInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001&B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0014J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0017J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000fH\u0017J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000fH\u0017J\u0018\u0010\u0014\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u000fH\u0017J\u0018\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u000fH\u0017J\u0018\u0010\u0018\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000fH\u0017J\u0018\u0010\u001a\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u000fH\u0017J\u0018\u0010\u001c\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000fH\u0017J\u0018\u0010\u001e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u000fH\u0017J\u0018\u0010 \u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u000fH\u0017J\u0018\u0010\"\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u000fH\u0017J\u0018\u0010$\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u000fH\u0017¨\u0006'"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXModelLayerManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXModelLayer;", "Lcom/facebook/react/viewmanagers/RNMBXModelLayerManagerInterface;", "<init>", "()V", "getName", "", "createViewInstance", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/uimanager/ThemedReactContext;", "setId", "", "layer", "id", "Lcom/facebook/react/bridge/Dynamic;", "setExisting", "existing", "setSourceID", "sourceID", "setAboveLayerID", "aboveLayerID", "setBelowLayerID", "belowLayerID", "setLayerIndex", "layerIndex", "setMinZoomLevel", "minZoomLevel", "setMaxZoomLevel", "maxZoomLevel", "setReactStyle", "style", "setSourceLayerID", "sourceLayerID", "setFilter", "filterList", "setSlot", "slot", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXModelLayerManager extends ViewGroupManager<RNMBXModelLayer> implements RNMBXModelLayerManagerInterface<RNMBXModelLayer> {
    public static final String REACT_CLASS = "RNMBXModelLayer";

    public RNMBXModelLayerManager() {
        super(null, 1, null);
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXModelLayer createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new RNMBXModelLayer(context);
    }

    @Override
    @ReactProp(name = "id")
    public void setId(RNMBXModelLayer layer, Dynamic id) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(id, "id");
        layer.setID(id.asString());
    }

    @Override
    @ReactProp(name = "existing")
    public void setExisting(RNMBXModelLayer layer, Dynamic existing) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(existing, "existing");
        layer.setExisting(existing.asBoolean());
    }

    @Override
    @ReactProp(name = "sourceID")
    public void setSourceID(RNMBXModelLayer layer, Dynamic sourceID) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(sourceID, "sourceID");
        layer.setSourceID(sourceID.asString());
    }

    @Override
    @ReactProp(name = "aboveLayerID")
    public void setAboveLayerID(RNMBXModelLayer layer, Dynamic aboveLayerID) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(aboveLayerID, "aboveLayerID");
        layer.setAboveLayerID(aboveLayerID.asString());
    }

    @Override
    @ReactProp(name = "belowLayerID")
    public void setBelowLayerID(RNMBXModelLayer layer, Dynamic belowLayerID) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(belowLayerID, "belowLayerID");
        layer.setBelowLayerID(belowLayerID.asString());
    }

    @Override
    @ReactProp(name = "layerIndex")
    public void setLayerIndex(RNMBXModelLayer layer, Dynamic layerIndex) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(layerIndex, "layerIndex");
        layer.setLayerIndex(layerIndex.asInt());
    }

    @Override
    @ReactProp(name = "minZoomLevel")
    public void setMinZoomLevel(RNMBXModelLayer layer, Dynamic minZoomLevel) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(minZoomLevel, "minZoomLevel");
        layer.setMinZoomLevel(minZoomLevel.asDouble());
    }

    @Override
    @ReactProp(name = "maxZoomLevel")
    public void setMaxZoomLevel(RNMBXModelLayer layer, Dynamic maxZoomLevel) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(maxZoomLevel, "maxZoomLevel");
        layer.setMaxZoomLevel(maxZoomLevel.asDouble());
    }

    @Override
    @ReactProp(name = "reactStyle")
    public void setReactStyle(RNMBXModelLayer layer, Dynamic style) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(style, "style");
        layer.setReactStyle(style.asMap());
    }

    @Override
    @ReactProp(name = "sourceLayerID")
    public void setSourceLayerID(RNMBXModelLayer layer, Dynamic sourceLayerID) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(sourceLayerID, "sourceLayerID");
        layer.setSourceLayerID(sourceLayerID.asString());
    }

    @Override
    @ReactProp(name = ViewProps.FILTER)
    public void setFilter(RNMBXModelLayer layer, Dynamic filterList) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(filterList, "filterList");
        layer.setFilter(filterList.asArray());
    }

    @Override
    @ReactProp(name = "slot")
    public void setSlot(RNMBXModelLayer layer, Dynamic slot) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(slot, "slot");
        layer.setSlot(slot.asString());
    }
}
