package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.bindgen.Expected;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.QueriedSourceFeature;
import com.mapbox.maps.QuerySourceFeaturesCallback;
import com.mapbox.maps.SourceQueryOptions;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.sources.Source;
import com.mapbox.maps.extension.style.sources.SourceUtils;
import com.mapbox.maps.extension.style.sources.generated.RasterDemSource;
import com.rnmapbox.rnmbx.events.AndroidCallbackEvent;
import com.rnmapbox.rnmbx.events.FeatureClickEvent;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.v11compat.feature.FeatureKt;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J.\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0012\b\u0001\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u000e\u0010\u001a\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u001bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterDemSource;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;", "Lcom/mapbox/maps/extension/style/sources/generated/RasterDemSource;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterDemSourceManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterDemSourceManager;)V", "tileSize", "", "Ljava/lang/Long;", "onPress", "", NotificationCompat.CATEGORY_EVENT, "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$OnPressEvent;", "makeSource", "querySourceFeatures", "callbackID", "", "layerIDs", "", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "hasNoDataSoRefersToExisting", "", "setTileSize", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXRasterDemSource extends RNMBXTileSource<RasterDemSource> {
    private final RNMBXRasterDemSourceManager mManager;
    private Long tileSize;

    public RNMBXRasterDemSource(Context context, RNMBXRasterDemSourceManager mManager) {
        super(context);
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mManager = mManager;
    }

    @Override
    public void onPress(RNMBXSource.OnPressEvent event) {
        RNMBXRasterDemSourceManager rNMBXRasterDemSourceManager = this.mManager;
        FeatureClickEvent featureClickEventMakeVectorSourceEvent = FeatureClickEvent.makeVectorSourceEvent(this, event);
        Intrinsics.checkNotNullExpressionValue(featureClickEventMakeVectorSourceEvent, "makeVectorSourceEvent(...)");
        rNMBXRasterDemSourceManager.handleEvent(featureClickEventMakeVectorSourceEvent);
    }

    @Override
    public RasterDemSource makeSource() {
        RasterDemSource.Builder builderTileSet;
        String id = getID();
        if (id == null) {
            Logger.INSTANCE.w(RNMBXRasterDemSourceManager.REACT_CLASS, "id is required");
            return null;
        }
        if (RNMBXSource.INSTANCE.isDefaultSource(id)) {
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            Style styleDeprecated = mapboxMap.getStyleDeprecated();
            Intrinsics.checkNotNull(styleDeprecated);
            Source source = SourceUtils.getSource(styleDeprecated, RNMBXSource.DEFAULT_ID);
            Intrinsics.checkNotNull(source, "null cannot be cast to non-null type com.mapbox.maps.extension.style.sources.generated.RasterDemSource");
            return (RasterDemSource) source;
        }
        String url = getURL();
        if (url != null) {
            builderTileSet = new RasterDemSource.Builder(id).url(url);
        } else {
            builderTileSet = new RasterDemSource.Builder(id).tileSet(buildTileset());
        }
        Long l = this.tileSize;
        if (l != null) {
            builderTileSet.tileSize(l.longValue());
        }
        return new RasterDemSource(builderTileSet);
    }

    public final void querySourceFeatures(String callbackID, List<String> layerIDs, Expression filter) {
        if (this.mSource == 0) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            writableNativeMap.putString("error", "source is not yet loaded");
            this.mManager.handleEvent(new AndroidCallbackEvent(this, callbackID, writableNativeMap));
            return;
        }
        final WritableNativeMap writableNativeMap2 = new WritableNativeMap();
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        String id = getID();
        Intrinsics.checkNotNull(id);
        Intrinsics.checkNotNull(filter);
        mapboxMap.querySourceFeatures(id, new SourceQueryOptions(layerIDs, filter), new QuerySourceFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXRasterDemSource.querySourceFeatures$lambda$1(writableNativeMap2, expected);
            }
        });
        this.mManager.handleEvent(new AndroidCallbackEvent(this, callbackID, writableNativeMap2));
    }

    public static final void querySourceFeatures$lambda$1(WritableMap writableMap, Expected queriedFeatures) {
        Intrinsics.checkNotNullParameter(queriedFeatures, "queriedFeatures");
        if (queriedFeatures.isError()) {
            writableMap.putString("error", (String) queriedFeatures.getError());
            return;
        }
        LinkedList linkedList = new LinkedList();
        Object value = queriedFeatures.getValue();
        Intrinsics.checkNotNull(value);
        for (QueriedSourceFeature queriedSourceFeature : (List) value) {
            Intrinsics.checkNotNull(queriedSourceFeature);
            linkedList.add(FeatureKt.getFeature(queriedSourceFeature));
        }
        writableMap.putString("data", FeatureCollection.fromFeatures(linkedList).toJson());
    }

    @Override
    public boolean hasNoDataSoRefersToExisting() {
        return getURL() == null && getTileUrlTemplates().isEmpty();
    }

    public final void setTileSize(int tileSize) {
        this.tileSize = Long.valueOf(tileSize);
    }
}
