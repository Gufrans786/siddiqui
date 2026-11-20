package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.CoreConstants;
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
import com.mapbox.maps.extension.style.sources.generated.VectorSource;
import com.rnmapbox.rnmbx.events.AndroidCallbackEvent;
import com.rnmapbox.rnmbx.events.FeatureClickEvent;
import com.rnmapbox.rnmbx.v11compat.feature.FeatureKt;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J.\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0012\b\u0001\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXVectorSource;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;", "Lcom/mapbox/maps/extension/style/sources/generated/VectorSource;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXVectorSourceManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXVectorSourceManager;)V", "onPress", "", NotificationCompat.CATEGORY_EVENT, "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$OnPressEvent;", "hasNoDataSoRefersToExisting", "", "makeSource", "querySourceFeatures", "callbackID", "", "layerIDs", "", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXVectorSource extends RNMBXTileSource<VectorSource> {
    private final RNMBXVectorSourceManager mManager;

    public RNMBXVectorSource(Context context, RNMBXVectorSourceManager mManager) {
        super(context);
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mManager = mManager;
    }

    @Override
    public void onPress(RNMBXSource.OnPressEvent event) {
        RNMBXVectorSourceManager rNMBXVectorSourceManager = this.mManager;
        FeatureClickEvent featureClickEventMakeVectorSourceEvent = FeatureClickEvent.makeVectorSourceEvent(this, event);
        Intrinsics.checkNotNullExpressionValue(featureClickEventMakeVectorSourceEvent, "makeVectorSourceEvent(...)");
        rNMBXVectorSourceManager.handleEvent(featureClickEventMakeVectorSourceEvent);
    }

    @Override
    public boolean hasNoDataSoRefersToExisting() {
        return getURL() == null && getTileUrlTemplates() == null;
    }

    @Override
    public VectorSource makeSource() {
        String id = getID();
        if (id == null) {
            throw new RuntimeException("id should be specified for VectorSource");
        }
        if (RNMBXSource.INSTANCE.isDefaultSource(id)) {
            MapboxMap mapboxMap = this.mMap;
            Intrinsics.checkNotNull(mapboxMap);
            Style styleDeprecated = mapboxMap.getStyleDeprecated();
            Intrinsics.checkNotNull(styleDeprecated);
            Source source = SourceUtils.getSource(styleDeprecated, RNMBXSource.DEFAULT_ID);
            Intrinsics.checkNotNull(source, "null cannot be cast to non-null type com.mapbox.maps.extension.style.sources.generated.VectorSource");
            return (VectorSource) source;
        }
        String url = getURL();
        if (url != null) {
            return new VectorSource(new VectorSource.Builder(id).url(url));
        }
        return new VectorSource(new VectorSource.Builder(id).tileSet(buildTileset()));
    }

    public final void querySourceFeatures(final String callbackID, List<String> layerIDs, Expression filter) {
        if (this.mSource == 0) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            writableNativeMap.putString("error", "source is not yet loaded");
            this.mManager.handleEvent(new AndroidCallbackEvent(this, callbackID, writableNativeMap));
            return;
        }
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        String id = getID();
        Intrinsics.checkNotNull(id);
        Intrinsics.checkNotNull(filter);
        mapboxMap.querySourceFeatures(id, new SourceQueryOptions(layerIDs, filter), new QuerySourceFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXVectorSource.querySourceFeatures$lambda$0(this.f$0, callbackID, expected);
            }
        });
    }

    public static final void querySourceFeatures$lambda$0(RNMBXVectorSource rNMBXVectorSource, String str, Expected queriedFeatures) {
        Intrinsics.checkNotNullParameter(queriedFeatures, "queriedFeatures");
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        if (queriedFeatures.isError()) {
            writableNativeMap.putString("error", (String) queriedFeatures.getError());
        } else {
            LinkedList linkedList = new LinkedList();
            Object value = queriedFeatures.getValue();
            Intrinsics.checkNotNull(value);
            for (QueriedSourceFeature queriedSourceFeature : (List) value) {
                Intrinsics.checkNotNull(queriedSourceFeature);
                linkedList.add(FeatureKt.getFeature(queriedSourceFeature));
            }
            writableNativeMap.putString("data", FeatureCollection.fromFeatures(linkedList).toJson());
        }
        rNMBXVectorSource.mManager.handleEvent(new AndroidCallbackEvent(rNMBXVectorSource, str, writableNativeMap));
    }
}
