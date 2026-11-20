package com.rnmapbox.rnmbx.components.styles.atmosphere;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.atmosphere.generated.Atmosphere;
import com.mapbox.maps.extension.style.terrain.generated.TerrainUtils;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyle;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleFactory;
import com.rnmapbox.rnmbx.components.styles.sources.AbstractSourceConsumer;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\rJ\u0006\u0010!\u001a\u00020\u0017R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/atmosphere/RNMBXAtmosphere;", "Lcom/rnmapbox/rnmbx/components/styles/sources/AbstractSourceConsumer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "iD", "", "getID", "()Ljava/lang/String;", "setID", "(Ljava/lang/String;)V", "mAtmosphere", "Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "getMAtmosphere", "()Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "setMAtmosphere", "(Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;)V", "mMap", "Lcom/mapbox/maps/MapboxMap;", "mReactStyle", "Lcom/facebook/react/bridge/ReadableMap;", "setReactStyle", "", "reactStyle", "addToMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "makeAtmosphere", "addStyles", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXAtmosphere extends AbstractSourceConsumer {
    private String iD;
    private Atmosphere mAtmosphere;
    protected MapboxMap mMap;
    protected ReadableMap mReactStyle;

    public RNMBXAtmosphere(Context context) {
        super(context);
    }

    @Override
    public String getID() {
        return this.iD;
    }

    public void setID(String str) {
        this.iD = str;
    }

    protected final Atmosphere getMAtmosphere() {
        return this.mAtmosphere;
    }

    protected final void setMAtmosphere(Atmosphere atmosphere) {
        this.mAtmosphere = atmosphere;
    }

    public final void setReactStyle(ReadableMap reactStyle) throws Exception {
        this.mReactStyle = reactStyle;
        if (this.mAtmosphere != null) {
            addStyles();
        }
    }

    @Override
    public void addToMap(RNMBXMapView mapView) throws Exception {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        this.mMap = mapView.getMapboxMap();
        Atmosphere atmosphereMakeAtmosphere = makeAtmosphere();
        this.mAtmosphere = atmosphereMakeAtmosphere;
        addStyles();
        Style savedStyle = mapView.getSavedStyle();
        if (savedStyle != null) {
            atmosphereMakeAtmosphere.bindTo(savedStyle);
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

    public final Atmosphere makeAtmosphere() {
        return new Atmosphere();
    }

    public final void addStyles() throws Exception {
        Atmosphere atmosphere = this.mAtmosphere;
        if (atmosphere != null) {
            RNMBXStyleFactory rNMBXStyleFactory = RNMBXStyleFactory.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            ReadableMap readableMap = this.mReactStyle;
            Intrinsics.checkNotNull(readableMap);
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            rNMBXStyleFactory.setAtmosphereLayerStyle(atmosphere, new RNMBXStyle(context, readableMap, mapboxMap));
            return;
        }
        Logger.INSTANCE.e(RNMBXAtmosphereManager.REACT_CLASS, "mAtmosphere is null");
    }
}
