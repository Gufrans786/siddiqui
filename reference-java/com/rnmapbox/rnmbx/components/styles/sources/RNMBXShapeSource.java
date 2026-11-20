package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.GeoJson;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.FeatureExtensionValue;
import com.mapbox.maps.GeoJSONSourceData;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.QueriedSourceFeature;
import com.mapbox.maps.QueryFeatureExtensionCallback;
import com.mapbox.maps.QuerySourceFeaturesCallback;
import com.mapbox.maps.SourceQueryOptions;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.sources.generated.GeoJsonSource;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.events.AndroidCallbackEvent;
import com.rnmapbox.rnmbx.events.FeatureClickEvent;
import com.rnmapbox.rnmbx.shapeAnimators.ShapeAnimationConsumer;
import com.rnmapbox.rnmbx.shapeAnimators.ShapeAnimator;
import com.rnmapbox.rnmbx.shapeAnimators.ShapeAnimatorManager;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.v11compat.feature.FeatureKt;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010!\u001a\u00020\u0011H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%2\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020\u0002H\u0016J\u000e\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u000bJ\u000e\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020\rJ\u0012\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020#2\u0006\u00103\u001a\u000204H\u0016J\u000e\u00106\u001a\u00020#2\u0006\u00107\u001a\u00020\u0011J\u000e\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020\u0014J\u000e\u0010:\u001a\u00020#2\u0006\u0010;\u001a\u00020\u0014J*\u0010<\u001a\u00020#2\"\u0010=\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00190\u0018j\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0019`\u001aJ\u000e\u0010>\u001a\u00020#2\u0006\u0010?\u001a\u00020\u0014J\u000e\u0010@\u001a\u00020#2\u0006\u0010A\u001a\u00020\u0014J\u000e\u0010B\u001a\u00020#2\u0006\u0010C\u001a\u00020\u001eJ\u000e\u0010D\u001a\u00020#2\u0006\u0010E\u001a\u00020\u0011J\u0012\u0010F\u001a\u00020#2\b\u0010G\u001a\u0004\u0018\u00010HH\u0016J\u0010\u0010I\u001a\u00020#2\u0006\u0010J\u001a\u00020KH\u0002J\u0018\u0010L\u001a\u00020#2\u0006\u0010M\u001a\u00020\r2\b\u0010N\u001a\u0004\u0018\u00010OJ\u0018\u0010P\u001a\u00020#2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020TH\u0002J \u0010U\u001a\u00020#2\u0006\u0010V\u001a\u00020\r2\u0006\u0010W\u001a\u00020\r2\u0006\u0010S\u001a\u00020TH\u0002J\u0016\u0010X\u001a\u00020#2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010S\u001a\u00020TJ&\u0010Z\u001a\u00020#2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010[\u001a\u00020+2\u0006\u0010\\\u001a\u00020+2\u0006\u0010S\u001a\u00020TJ\u0016\u0010]\u001a\u00020#2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010S\u001a\u00020TR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R.\u0010\u0017\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018j\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0019\u0018\u0001`\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001fR\u0012\u0010 \u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012¨\u0006^"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXShapeSource;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimationConsumer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXShapeSourceManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXShapeSourceManager;)V", "mURL", "Ljava/net/URL;", "mShape", "", "mShapeAnimator", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimator;", "mCluster", "", "Ljava/lang/Boolean;", "mClusterRadius", "", "Ljava/lang/Long;", "mClusterMaxZoom", "mClusterProperties", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "mMaxZoom", "mBuffer", "mTolerance", "", "Ljava/lang/Double;", "mLineMetrics", "hasNoDataSoRefersToExisting", "addToMap", "", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "setId", "id", "", "makeSource", "setURL", ImagesContract.URL, "setShape", "geoJSONStr", "toGeoJSONSourceData", "Lcom/mapbox/maps/GeoJSONSourceData;", "geoJson", "Lcom/mapbox/geojson/GeoJson;", "shapeUpdated", "setCluster", "cluster", "setClusterRadius", "clusterRadius", "setClusterMaxZoom", "clusterMaxZoom", "setClusterProperties", "clusterProperties", "setMaxZoom", "maxZoom", "setBuffer", "buffer", "setTolerance", "tolerance", "setLineMetrics", "lineMetrics", "onPress", NotificationCompat.CATEGORY_EVENT, "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$OnPressEvent;", "getOptions", "builder", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource$Builder;", "querySourceFeatures", "callbackID", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "callbackSuccess", "payload", "Lcom/facebook/react/bridge/WritableMap;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "callbackError", "error", "where", "getClusterExpansionZoom", "featureJSON", "getClusterLeaves", "number", "offset", "getClusterChildren", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXShapeSource extends RNMBXSource<GeoJsonSource> implements ShapeAnimationConsumer {
    private Long mBuffer;
    private Boolean mCluster;
    private Long mClusterMaxZoom;
    private HashMap<String, Object> mClusterProperties;
    private Long mClusterRadius;
    private Boolean mLineMetrics;
    private final RNMBXShapeSourceManager mManager;
    private Long mMaxZoom;
    private String mShape;
    private ShapeAnimator mShapeAnimator;
    private Double mTolerance;
    private URL mURL;

    public RNMBXShapeSource(Context context, RNMBXShapeSourceManager mManager) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mManager = mManager;
    }

    @Override
    public boolean hasNoDataSoRefersToExisting() {
        return this.mURL == null && this.mShape == null;
    }

    @Override
    public void addToMap(final RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        mapView.getMapboxMap().getStyle(new Style.OnStyleLoaded() {
            @Override
            public final void onStyleLoaded(Style style) {
                RNMBXShapeSource.addToMap$lambda$0(mapView, this, style);
            }
        });
    }

    public static final void addToMap$lambda$0(RNMBXMapView rNMBXMapView, RNMBXShapeSource rNMBXShapeSource, Style it) {
        Intrinsics.checkNotNullParameter(it, "it");
        rNMBXMapView.getMapboxMap();
        super.addToMap(rNMBXMapView);
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        ShapeAnimator shapeAnimator;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (reason == RemovalReason.VIEW_REMOVAL && (shapeAnimator = this.mShapeAnimator) != null) {
            shapeAnimator.unsubscribe(this);
        }
        return super.removeFromMap(mapView, reason);
    }

    @Override
    public void setId(int id) {
        super.setId(id);
        this.mManager.tagAssigned(id);
    }

    @Override
    public GeoJsonSource makeSource() {
        GeoJsonSource.Builder builder = new GeoJsonSource.Builder(String.valueOf(getID()));
        getOptions(builder);
        String strValueOf = this.mShape;
        if (strValueOf == null) {
            strValueOf = String.valueOf(this.mURL);
        }
        GeoJsonSource.Builder.data$default(builder, strValueOf, null, 2, null);
        return builder.build();
    }

    public final void setURL(URL url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.mURL = url;
        if (this.mSource == 0 || getMMapView() == null) {
            return;
        }
        RNMBXMapView mMapView = getMMapView();
        Intrinsics.checkNotNull(mMapView);
        if (mMapView.getIsDestroyed()) {
            return;
        }
        T t = this.mSource;
        Intrinsics.checkNotNull(t);
        GeoJsonSource.data$default((GeoJsonSource) t, String.valueOf(this.mURL), null, 2, null);
    }

    public final void setShape(String geoJSONStr) {
        Intrinsics.checkNotNullParameter(geoJSONStr, "geoJSONStr");
        ShapeAnimator shapeAnimator = this.mShapeAnimator;
        if (shapeAnimator != null) {
            shapeAnimator.unsubscribe(this);
        }
        this.mShapeAnimator = null;
        ShapeAnimatorManager shapeAnimatorManager = this.mManager.getShapeAnimatorManager();
        if (shapeAnimatorManager.isShapeAnimatorTag(geoJSONStr)) {
            ShapeAnimator shapeAnimator2 = shapeAnimatorManager.get(geoJSONStr);
            if (shapeAnimator2 != null) {
                this.mShapeAnimator = shapeAnimator2;
                shapeAnimator2.subscribe(this);
                shapeUpdated(shapeAnimator2.getShape());
                return;
            }
            return;
        }
        this.mShape = geoJSONStr;
        if (this.mSource == 0 || getMMapView() == null) {
            return;
        }
        RNMBXMapView mMapView = getMMapView();
        Intrinsics.checkNotNull(mMapView);
        if (mMapView.getIsDestroyed()) {
            return;
        }
        T t = this.mSource;
        Intrinsics.checkNotNull(t);
        String str = this.mShape;
        Intrinsics.checkNotNull(str);
        GeoJsonSource.data$default((GeoJsonSource) t, str, null, 2, null);
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        Style styleDeprecated = mapboxMap.getStyleDeprecated();
        Intrinsics.checkNotNull(styleDeprecated);
        String id = getID();
        Intrinsics.checkNotNull(id);
        String str2 = this.mShape;
        Intrinsics.checkNotNull(str2);
        Value valueValueOf = Value.valueOf(str2);
        Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(...)");
        styleDeprecated.setStyleSourceProperty(id, "data", valueValueOf);
    }

    private final GeoJSONSourceData toGeoJSONSourceData(GeoJson geoJson) {
        if (geoJson instanceof Geometry) {
            return new GeoJSONSourceData((Geometry) geoJson);
        }
        if (geoJson instanceof Feature) {
            return new GeoJSONSourceData((Feature) geoJson);
        }
        if (geoJson instanceof FeatureCollection) {
            List<Feature> listFeatures = ((FeatureCollection) geoJson).features();
            if (listFeatures == null) {
                listFeatures = CollectionsKt.emptyList();
            }
            return new GeoJSONSourceData(listFeatures);
        }
        Logger.INSTANCE.e(RNMBXSource.LOG_TAG, "Cannot convert shape to Geometry, Feature, or FeatureCollection: " + geoJson);
        return null;
    }

    @Override
    public void shapeUpdated(GeoJson geoJson) {
        GeoJSONSourceData geoJSONSourceData;
        MapboxMap mapboxMap;
        Style styleDeprecated;
        Intrinsics.checkNotNullParameter(geoJson, "geoJson");
        if (((GeoJsonSource) this.mSource) != null) {
            if (this.mSource == 0 || getMMapView() == null) {
                return;
            }
            RNMBXMapView mMapView = getMMapView();
            Intrinsics.checkNotNull(mMapView);
            if (mMapView.getIsDestroyed() || (geoJSONSourceData = toGeoJSONSourceData(geoJson)) == null || (mapboxMap = this.mMap) == null || (styleDeprecated = mapboxMap.getStyleDeprecated()) == null) {
                return;
            }
            String id = getID();
            Intrinsics.checkNotNull(id);
            styleDeprecated.setStyleGeoJSONSourceData(id, "animated-shape", geoJSONSourceData);
            return;
        }
        this.mShape = geoJson.toJson();
    }

    public final void setCluster(boolean cluster) {
        this.mCluster = Boolean.valueOf(cluster);
    }

    public final void setClusterRadius(long clusterRadius) {
        this.mClusterRadius = Long.valueOf(clusterRadius);
    }

    public final void setClusterMaxZoom(long clusterMaxZoom) {
        this.mClusterMaxZoom = Long.valueOf(clusterMaxZoom);
        if (this.mSource == 0 || getMMapView() == null) {
            return;
        }
        RNMBXMapView mMapView = getMMapView();
        Intrinsics.checkNotNull(mMapView);
        if (mMapView.getIsDestroyed()) {
            return;
        }
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        Style styleDeprecated = mapboxMap.getStyleDeprecated();
        Intrinsics.checkNotNull(styleDeprecated);
        String id = getID();
        Intrinsics.checkNotNull(id);
        Value valueValueOf = Value.valueOf(clusterMaxZoom);
        Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(...)");
        styleDeprecated.setStyleSourceProperty(id, "clusterMaxZoom", valueValueOf);
    }

    public final void setClusterProperties(HashMap<String, Object> clusterProperties) {
        Intrinsics.checkNotNullParameter(clusterProperties, "clusterProperties");
        this.mClusterProperties = clusterProperties;
    }

    public final void setMaxZoom(long maxZoom) {
        this.mMaxZoom = Long.valueOf(maxZoom);
    }

    public final void setBuffer(long buffer) {
        this.mBuffer = Long.valueOf(buffer);
    }

    public final void setTolerance(double tolerance) {
        this.mTolerance = Double.valueOf(tolerance);
    }

    public final void setLineMetrics(boolean lineMetrics) {
        this.mLineMetrics = Boolean.valueOf(lineMetrics);
    }

    @Override
    public void onPress(RNMBXSource.OnPressEvent event) {
        RNMBXShapeSourceManager rNMBXShapeSourceManager = this.mManager;
        FeatureClickEvent featureClickEventMakeShapeSourceEvent = FeatureClickEvent.makeShapeSourceEvent(this, event);
        Intrinsics.checkNotNullExpressionValue(featureClickEventMakeShapeSourceEvent, "makeShapeSourceEvent(...)");
        rNMBXShapeSourceManager.handleEvent(featureClickEventMakeShapeSourceEvent);
    }

    private final void getOptions(GeoJsonSource.Builder builder) {
        Boolean bool = this.mCluster;
        if (bool != null) {
            Intrinsics.checkNotNull(bool);
            builder.cluster(bool.booleanValue());
        }
        Long l = this.mClusterRadius;
        if (l != null) {
            Intrinsics.checkNotNull(l);
            builder.clusterRadius(l.longValue());
        }
        Long l2 = this.mClusterMaxZoom;
        if (l2 != null) {
            Intrinsics.checkNotNull(l2);
            builder.clusterMaxZoom(l2.longValue());
        }
        HashMap<String, Object> map = this.mClusterProperties;
        if (map != null) {
            Intrinsics.checkNotNull(map);
            builder.clusterProperties(map);
        }
        Long l3 = this.mMaxZoom;
        if (l3 != null) {
            Intrinsics.checkNotNull(l3);
            builder.maxzoom(l3.longValue());
        }
        Long l4 = this.mBuffer;
        if (l4 != null) {
            Intrinsics.checkNotNull(l4);
            builder.buffer(l4.longValue());
        }
        Double d = this.mTolerance;
        if (d != null) {
            Intrinsics.checkNotNull(d);
            builder.tolerance(d.doubleValue());
        }
        Boolean bool2 = this.mLineMetrics;
        if (bool2 != null) {
            Intrinsics.checkNotNull(bool2);
            builder.lineMetrics(bool2.booleanValue());
        }
    }

    public final void querySourceFeatures(final String callbackID, Expression filter) {
        Intrinsics.checkNotNullParameter(callbackID, "callbackID");
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
        mapboxMap.querySourceFeatures(id, new SourceQueryOptions(null, filter), new QuerySourceFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXShapeSource.querySourceFeatures$lambda$5(this.f$0, callbackID, this, expected);
            }
        });
    }

    public static final void querySourceFeatures$lambda$5(RNMBXShapeSource rNMBXShapeSource, String str, RNMBXShapeSource rNMBXShapeSource2, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isError()) {
            Logger logger = Logger.INSTANCE;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str2 = String.format("Error: %s", Arrays.copyOf(new Object[]{features.getError()}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            logger.e(RNMBXSource.LOG_TAG, str2);
            return;
        }
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        Object value = features.getValue();
        Intrinsics.checkNotNull(value);
        ArrayList arrayList = new ArrayList(((List) value).size());
        Object value2 = features.getValue();
        Intrinsics.checkNotNull(value2);
        for (QueriedSourceFeature queriedSourceFeature : (List) value2) {
            Intrinsics.checkNotNull(queriedSourceFeature);
            arrayList.add(FeatureKt.getFeature(queriedSourceFeature));
        }
        writableNativeMap.putString("data", FeatureCollection.fromFeatures(arrayList).toJson());
        rNMBXShapeSource2.mManager.handleEvent(new AndroidCallbackEvent(rNMBXShapeSource, str, writableNativeMap));
    }

    private final void callbackSuccess(WritableMap payload, Promise promise) {
        promise.resolve(payload);
    }

    private final void callbackError(String error, String where, Promise promise) {
        promise.reject("error", where + ": " + error);
    }

    public final void getClusterExpansionZoom(String featureJSON, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureJSON, "featureJSON");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Feature featureFromJson = Feature.fromJson(featureJSON);
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        String id = getID();
        Intrinsics.checkNotNull(id);
        Intrinsics.checkNotNull(featureFromJson);
        mapboxMap.getGeoJsonClusterExpansionZoom(id, featureFromJson, new QueryFeatureExtensionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXShapeSource.getClusterExpansionZoom$lambda$6(this.f$0, promise, expected);
            }
        });
    }

    public static final void getClusterExpansionZoom$lambda$6(RNMBXShapeSource rNMBXShapeSource, Promise promise, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isValue()) {
            Object value = features.getValue();
            Intrinsics.checkNotNull(value);
            Value value2 = ((FeatureExtensionValue) value).getValue();
            Intrinsics.checkNotNull(value2);
            Object contents = value2.getContents();
            new WritableNativeMap();
            if (contents instanceof Long) {
                WritableNativeMap writableNativeMap = new WritableNativeMap();
                writableNativeMap.putInt("data", (int) ((Number) contents).longValue());
                rNMBXShapeSource.callbackSuccess(writableNativeMap, promise);
                return;
            }
            rNMBXShapeSource.callbackError("Not a number: " + contents, "getClusterExpansionZoom/getGeoJsonClusterExpansionZoom", promise);
            return;
        }
        String str = (String) features.getError();
        if (str == null) {
            str = "Unknown error";
        }
        rNMBXShapeSource.callbackError(str, "getClusterExpansionZoom/getGeoJsonClusterExpansionZoom", promise);
    }

    public final void getClusterLeaves(String featureJSON, int number, int offset, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureJSON, "featureJSON");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Feature featureFromJson = Feature.fromJson(featureJSON);
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        String id = getID();
        Intrinsics.checkNotNull(id);
        Intrinsics.checkNotNull(featureFromJson);
        mapboxMap.getGeoJsonClusterLeaves(id, featureFromJson, number, offset, new QueryFeatureExtensionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXShapeSource.getClusterLeaves$lambda$7(this.f$0, promise, expected);
            }
        });
    }

    public static final void getClusterLeaves$lambda$7(RNMBXShapeSource rNMBXShapeSource, Promise promise, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isValue()) {
            Object value = features.getValue();
            Intrinsics.checkNotNull(value);
            List<Feature> featureCollection = ((FeatureExtensionValue) value).getFeatureCollection();
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            Intrinsics.checkNotNull(featureCollection);
            writableNativeMap.putString("data", FeatureCollection.fromFeatures(featureCollection).toJson());
            rNMBXShapeSource.callbackSuccess(writableNativeMap, promise);
            return;
        }
        String str = (String) features.getError();
        if (str == null) {
            str = "Unknown error";
        }
        rNMBXShapeSource.callbackError(str, "getClusterLeaves/getGeoJsonClusterLeaves", promise);
    }

    public final void getClusterChildren(String featureJSON, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureJSON, "featureJSON");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Feature featureFromJson = Feature.fromJson(featureJSON);
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        String id = getID();
        Intrinsics.checkNotNull(id);
        Intrinsics.checkNotNull(featureFromJson);
        mapboxMap.getGeoJsonClusterChildren(id, featureFromJson, new QueryFeatureExtensionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXShapeSource.getClusterChildren$lambda$8(this.f$0, promise, expected);
            }
        });
    }

    public static final void getClusterChildren$lambda$8(RNMBXShapeSource rNMBXShapeSource, Promise promise, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isValue()) {
            Object value = features.getValue();
            Intrinsics.checkNotNull(value);
            List<Feature> featureCollection = ((FeatureExtensionValue) value).getFeatureCollection();
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            Intrinsics.checkNotNull(featureCollection);
            writableNativeMap.putString("data", FeatureCollection.fromFeatures(featureCollection).toJson());
            rNMBXShapeSource.callbackSuccess(writableNativeMap, promise);
            return;
        }
        String str = (String) features.getError();
        if (str == null) {
            str = "Unknown error";
        }
        rNMBXShapeSource.callbackError(str, "getClusterLeaves/queryFeatureExtensions", promise);
    }
}
