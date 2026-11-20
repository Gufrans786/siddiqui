package com.rnmapbox.rnmbx.components.styles.terrain;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.terrain.generated.Terrain;
import com.mapbox.maps.extension.style.terrain.generated.TerrainUtils;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.components.styles.sources.AbstractSourceConsumer;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020$H\u0016J\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020\u001aR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/terrain/RNMBXTerrain;", "Lcom/rnmapbox/rnmbx/components/styles/sources/AbstractSourceConsumer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "iD", "", "getID", "()Ljava/lang/String;", "setID", "(Ljava/lang/String;)V", "mSourceID", "getMSourceID", "setMSourceID", "mTerrain", "Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;", "getMTerrain", "()Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;", "setMTerrain", "(Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;)V", "mMap", "Lcom/mapbox/maps/MapboxMap;", "mReactStyle", "Lcom/facebook/react/bridge/ReadableMap;", "setReactStyle", "", "reactStyle", "setSourceID", "sourceID", "addToMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "makeTerrain", "addStyles", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXTerrain extends AbstractSourceConsumer {
    private String iD;
    protected MapboxMap mMap;
    protected ReadableMap mReactStyle;
    private String mSourceID;
    private Terrain mTerrain;

    public RNMBXTerrain(Context context) {
        super(context);
    }

    @Override
    public String getID() {
        return this.iD;
    }

    public void setID(String str) {
        this.iD = str;
    }

    protected final String getMSourceID() {
        return this.mSourceID;
    }

    protected final void setMSourceID(String str) {
        this.mSourceID = str;
    }

    protected final Terrain getMTerrain() {
        return this.mTerrain;
    }

    protected final void setMTerrain(Terrain terrain) {
        this.mTerrain = terrain;
    }

    public final void setReactStyle(ReadableMap reactStyle) throws Exception {
        this.mReactStyle = reactStyle;
        if (this.mTerrain != null) {
            addStyles();
        }
    }

    public final void setSourceID(String sourceID) {
        this.mSourceID = sourceID;
    }

    @Override
    public void addToMap(RNMBXMapView mapView) throws Exception {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        this.mMap = mapView.getMapboxMap();
        Terrain terrainMakeTerrain = makeTerrain();
        this.mTerrain = terrainMakeTerrain;
        addStyles();
        Style savedStyle = mapView.getSavedStyle();
        if (savedStyle != null) {
            terrainMakeTerrain.bindTo(savedStyle);
        }
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Style savedStyle = mapView.getSavedStyle();
        if (savedStyle != null) {
            TerrainUtils.removeTerrain(savedStyle);
        }
        this.mMap = null;
        return super.removeFromMap(mapView, reason);
    }

    public final Terrain makeTerrain() {
        String str = this.mSourceID;
        Intrinsics.checkNotNull(str);
        return new Terrain(str);
    }

    public final void addStyles() throws Exception {
        Terrain terrain = this.mTerrain;
        if (terrain != null) {
            RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            ReadableMap readableMap = this.mReactStyle;
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            rNMBXStyleFactory.setTerrainLayerStyle(terrain, new RNMBXStyle(context, readableMap, mapboxMap));
            return;
        }
        Logger.INSTANCE.e("RNMBXTerrainLayer", "mLayer is null");
    }
}
