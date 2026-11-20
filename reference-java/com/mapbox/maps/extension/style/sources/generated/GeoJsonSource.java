package com.mapbox.maps.extension.style.sources.generated;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.GeoJson;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.GeoJSONSourceData;
import com.mapbox.maps.MapLoadingError;
import com.mapbox.maps.MapLoadingErrorType;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.TileCacheBudget;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.sources.Source;
import com.mapbox.maps.extension.style.sources.SourceUtils;
import com.mapbox.maps.extension.style.types.PromoteId;
import com.mapbox.maps.extension.style.types.SourceDsl;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 Y2\u00020\u0001:\u0002XYB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010C\u001a\u00020\u00002\u0006\u0010$\u001a\u00020#2\u0006\u0010D\u001a\u00020\u0006H\u0002J\u0010\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020HH\u0016J\u001a\u0010$\u001a\u00020\u00002\u0006\u0010I\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0006H\u0007J\u001a\u0010J\u001a\u00020\u00002\u0006\u0010I\u001a\u00020K2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0007J\u001a\u0010L\u001a\u00020\u00002\u0006\u0010I\u001a\u00020M2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0007J\u001a\u0010N\u001a\u00020\u00002\u0006\u0010I\u001a\u00020O2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0007J\r\u0010P\u001a\u00020\u0006H\u0010¢\u0006\u0002\bQJ\u0010\u00102\u001a\u00020\u00002\b\b\u0002\u0010I\u001a\u00020\u0010J\u0018\u0010R\u001a\u00020F2\u0006\u0010$\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u0006H\u0002J\u0018\u0010S\u001a\u00020F2\u0006\u0010$\u001a\u00020T2\u0006\u0010D\u001a\u00020\u0006H\u0002J\u0018\u0010U\u001a\u00020F2\u0006\u0010V\u001a\u00020#2\u0006\u0010D\u001a\u00020\u0006H\u0002J\u000e\u00108\u001a\u00020\u00002\u0006\u0010I\u001a\u000209J\u001a\u0010W\u001a\u00020\u00002\u0006\u0010I\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0006H\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000eR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0012R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0012R\u001f\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0012R\u0010\u0010 \u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010$\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b%\u0010\bR\u0013\u0010&\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b'\u0010\u000eR\u0013\u0010(\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b)\u0010\u000eR\u001b\u0010*\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b,\u0010-R\u0013\u00100\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b1\u0010\u0012R\u0013\u00102\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b3\u0010\u0012R\u0013\u00104\u001a\u0004\u0018\u0001058F¢\u0006\u0006\u001a\u0004\b6\u00107R\u0013\u00108\u001a\u0004\u0018\u0001098F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0013\u0010<\u001a\u0004\u0018\u00010=8F¢\u0006\u0006\u001a\u0004\b>\u0010?R\u001b\u0010@\u001a\u00020+8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\bB\u0010/\u001a\u0004\bA\u0010-¨\u0006Z"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;", "Lcom/mapbox/maps/extension/style/sources/Source;", "builder", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource$Builder;", "(Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource$Builder;)V", "attribution", "", "getAttribution", "()Ljava/lang/String;", "autoMaxZoom", "", "getAutoMaxZoom$annotations", "()V", "getAutoMaxZoom", "()Ljava/lang/Boolean;", "buffer", "", "getBuffer", "()Ljava/lang/Long;", "cluster", "getCluster", "clusterMaxZoom", "getClusterMaxZoom", "clusterMinPoints", "getClusterMinPoints", "clusterProperties", "Ljava/util/HashMap;", "", "getClusterProperties", "()Ljava/util/HashMap;", "clusterRadius", "getClusterRadius", "currentData", "currentDataId", "currentGeoJson", "Lcom/mapbox/geojson/GeoJson;", "data", "getData", "generateId", "getGenerateId", "lineMetrics", "getLineMetrics", "mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "mainHandler$delegate", "Lkotlin/Lazy;", "maxzoom", "getMaxzoom", "prefetchZoomDelta", "getPrefetchZoomDelta", "promoteId", "Lcom/mapbox/maps/extension/style/types/PromoteId;", "getPromoteId", "()Lcom/mapbox/maps/extension/style/types/PromoteId;", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "getTileCacheBudget", "()Lcom/mapbox/maps/TileCacheBudget;", "tolerance", "", "getTolerance", "()Ljava/lang/Double;", "workerHandler", "getWorkerHandler$extension_style_release", "workerHandler$delegate", "applyGeoJsonData", "dataId", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "value", "feature", "Lcom/mapbox/geojson/Feature;", "featureCollection", "Lcom/mapbox/geojson/FeatureCollection;", "geometry", "Lcom/mapbox/geojson/Geometry;", "getType", "getType$extension_style_release", "setData", "setDataAsync", "Lcom/mapbox/maps/GeoJSONSourceData;", "setGeoJson", "geoJson", ImagesContract.URL, "Builder", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GeoJsonSource extends Source {

    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "GeoJsonSource";
    private static final HandlerThread workerThread;
    private String currentData;
    private String currentDataId;
    private GeoJson currentGeoJson;

    private final Lazy mainHandler;

    private final Lazy workerHandler;

    public GeoJsonSource(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    public static void getAutoMaxZoom$annotations() {
    }

    public final GeoJsonSource data(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return data$default(this, value, null, 2, null);
    }

    public final GeoJsonSource feature(Feature value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return feature$default(this, value, null, 2, null);
    }

    public final GeoJsonSource featureCollection(FeatureCollection value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return featureCollection$default(this, value, null, 2, null);
    }

    public final GeoJsonSource geometry(Geometry value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return geometry$default(this, value, null, 2, null);
    }

    @Deprecated(message = "Method url() is deprecated in favor of data() method as they do the same thing", replaceWith = @ReplaceWith(expression = "data(value, dataId)", imports = {}))
    public final GeoJsonSource url(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return url$default(this, value, null, 2, null);
    }

    private GeoJsonSource(Builder builder) {
        super(builder.getSourceId());
        getSourceProperties$extension_style_release().putAll(builder.getProperties$extension_style_release());
        getVolatileSourceProperties$extension_style_release().putAll(builder.getVolatileProperties$extension_style_release());
        this.currentGeoJson = builder.getGeoJson();
        this.currentData = builder.getData();
        this.currentDataId = builder.getDataId();
        this.workerHandler = LazyKt.lazy(new Function0<Handler>() {
            @Override
            public final Handler invoke() {
                return new Handler(GeoJsonSource.INSTANCE.getWorkerThread$extension_style_release().getLooper());
            }
        });
        this.mainHandler = LazyKt.lazy(new Function0<Handler>() {
            @Override
            public final Handler invoke() {
                return new Handler(Looper.getMainLooper());
            }
        });
    }

    public final Handler getWorkerHandler$extension_style_release() {
        return (Handler) this.workerHandler.getValue();
    }

    private final Handler getMainHandler() {
        return (Handler) this.mainHandler.getValue();
    }

    private final void setDataAsync(final GeoJSONSourceData data, final String dataId) {
        final MapboxStyleManager delegate$extension_style_release = getDelegate();
        if (delegate$extension_style_release != null) {
            getWorkerHandler$extension_style_release().removeCallbacksAndMessages(null);
            getWorkerHandler$extension_style_release().post(new Runnable() {
                @Override
                public final void run() throws JSONException {
                    GeoJsonSource.setDataAsync$lambda$3$lambda$2(delegate$extension_style_release, this, dataId, data);
                }
            });
        }
    }

    public static final void setDataAsync$lambda$3$lambda$2(final MapboxStyleManager style, final GeoJsonSource this$0, String dataId, GeoJSONSourceData data) throws JSONException {
        Throwable th;
        Expected<String, None> styleGeoJSONSourceData;
        String error;
        Intrinsics.checkNotNullParameter(style, "$style");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dataId, "$dataId");
        Intrinsics.checkNotNullParameter(data, "$data");
        String message = null;
        try {
            styleGeoJSONSourceData = style.setStyleGeoJSONSourceData(this$0.getSourceId(), dataId, data);
            th = null;
        } catch (Throwable th2) {
            th = th2;
            styleGeoJSONSourceData = null;
        }
        if ((styleGeoJSONSourceData == null || !styleGeoJSONSourceData.isError()) && th == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("dataId", dataId);
        StringBuilder sb = new StringBuilder("setStyleGeoJSONSourceData error: ");
        if (styleGeoJSONSourceData != null && (error = styleGeoJSONSourceData.getError()) != null) {
            message = error;
        } else if (th != null) {
            message = th.getMessage();
        }
        jSONObject.put("message", sb.append(message).toString());
        final String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "JSONObject().apply {\n   …\")\n          }.toString()");
        final Date date = new Date();
        MapboxLogger.logE(TAG, string);
        this$0.getMainHandler().post(new Runnable() {
            @Override
            public final void run() {
                GeoJsonSource.setDataAsync$lambda$3$lambda$2$lambda$1(style, string, this$0, date);
            }
        });
    }

    public static final void setDataAsync$lambda$3$lambda$2$lambda$1(MapboxStyleManager style, String errorJsonString, GeoJsonSource this$0, Date errorTime) {
        Intrinsics.checkNotNullParameter(style, "$style");
        Intrinsics.checkNotNullParameter(errorJsonString, "$errorJsonString");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(errorTime, "$errorTime");
        style.getMapLoadingErrorDelegate().sendMapLoadingError(new MapLoadingError(MapLoadingErrorType.SOURCE, errorJsonString, this$0.getSourceId(), null, errorTime));
    }

    private final void setGeoJson(GeoJson geoJson, String dataId) {
        setDataAsync(INSTANCE.toGeoJsonData$extension_style_release(geoJson), dataId);
        this.currentGeoJson = geoJson;
        this.currentDataId = dataId;
        this.currentData = null;
    }

    private final void setData(String data, String dataId) {
        GeoJSONSourceData geoJSONSourceDataValueOf = GeoJSONSourceData.valueOf(data);
        Intrinsics.checkNotNullExpressionValue(geoJSONSourceDataValueOf, "valueOf(data)");
        setDataAsync(geoJSONSourceDataValueOf, dataId);
        this.currentData = data;
        this.currentDataId = dataId;
        this.currentGeoJson = null;
    }

    @Override
    public void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        super.bindTo(delegate);
        GeoJson geoJson = this.currentGeoJson;
        if (geoJson != null) {
            setGeoJson(geoJson, this.currentDataId);
        }
        String str = this.currentData;
        if (str != null) {
            setData(str, this.currentDataId);
        }
    }

    @Override
    public String getType$extension_style_release() {
        return "geojson";
    }

    public static GeoJsonSource data$default(GeoJsonSource geoJsonSource, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return geoJsonSource.data(str, str2);
    }

    public final GeoJsonSource data(String value, String dataId) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        setData(value, dataId);
        return this;
    }

    public final String getData() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get data: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "data");
            if (Intrinsics.areEqual("data", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (String) arrayList;
            } else if (Intrinsics.areEqual("data", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (String) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, String.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property data failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "data").getValue().toJson());
            objUnwrap = null;
        }
        return (String) obj;
    }

    public static GeoJsonSource url$default(GeoJsonSource geoJsonSource, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return geoJsonSource.url(str, str2);
    }

    @Deprecated(message = "Method url() is deprecated in favor of data() method as they do the same thing", replaceWith = @ReplaceWith(expression = "data(value, dataId)", imports = {}))
    public final GeoJsonSource url(String value, String dataId) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        data(value, dataId);
        return this;
    }

    public final Long getMaxzoom() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get maxzoom: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "maxzoom");
            if (Intrinsics.areEqual("maxzoom", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Long) arrayList;
            } else if (Intrinsics.areEqual("maxzoom", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property maxzoom failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "maxzoom").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final String getAttribution() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get attribution: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "attribution");
            if (Intrinsics.areEqual("attribution", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (String) arrayList;
            } else if (Intrinsics.areEqual("attribution", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (String) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, String.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property attribution failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "attribution").getValue().toJson());
            objUnwrap = null;
        }
        return (String) obj;
    }

    public final Long getBuffer() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get buffer: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "buffer");
            if (Intrinsics.areEqual("buffer", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Long) arrayList;
            } else if (Intrinsics.areEqual("buffer", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property buffer failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "buffer").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final Double getTolerance() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tolerance: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "tolerance");
            if (Intrinsics.areEqual("tolerance", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Double) arrayList;
            } else if (Intrinsics.areEqual("tolerance", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Double) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Double.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property tolerance failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "tolerance").getValue().toJson());
            objUnwrap = null;
        }
        return (Double) obj;
    }

    public final Boolean getCluster() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get cluster: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "cluster");
            if (Intrinsics.areEqual("cluster", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Boolean) arrayList;
            } else if (Intrinsics.areEqual("cluster", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Boolean) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Boolean.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property cluster failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "cluster").getValue().toJson());
            objUnwrap = null;
        }
        return (Boolean) obj;
    }

    public final Long getClusterRadius() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get clusterRadius: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterRadius");
            if (Intrinsics.areEqual("clusterRadius", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Long) arrayList;
            } else if (Intrinsics.areEqual("clusterRadius", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property clusterRadius failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterRadius").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final Long getClusterMaxZoom() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get clusterMaxZoom: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterMaxZoom");
            if (Intrinsics.areEqual("clusterMaxZoom", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Long) arrayList;
            } else if (Intrinsics.areEqual("clusterMaxZoom", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property clusterMaxZoom failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterMaxZoom").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final Long getClusterMinPoints() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get clusterMinPoints: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterMinPoints");
            if (Intrinsics.areEqual("clusterMinPoints", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Long) arrayList;
            } else if (Intrinsics.areEqual("clusterMinPoints", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property clusterMinPoints failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterMinPoints").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final HashMap<String, Object> getClusterProperties() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get clusterProperties: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterProperties");
            if (Intrinsics.areEqual("clusterProperties", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (HashMap) arrayList;
            } else if (Intrinsics.areEqual("clusterProperties", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (HashMap) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, HashMap.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property clusterProperties failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "clusterProperties").getValue().toJson());
            objUnwrap = null;
        }
        return (HashMap) obj;
    }

    public final Boolean getLineMetrics() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get lineMetrics: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "lineMetrics");
            if (Intrinsics.areEqual("lineMetrics", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Boolean) arrayList;
            } else if (Intrinsics.areEqual("lineMetrics", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Boolean) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Boolean.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property lineMetrics failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "lineMetrics").getValue().toJson());
            objUnwrap = null;
        }
        return (Boolean) obj;
    }

    public final Boolean getGenerateId() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get generateId: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "generateId");
            if (Intrinsics.areEqual("generateId", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Boolean) arrayList;
            } else if (Intrinsics.areEqual("generateId", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Boolean) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Boolean.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property generateId failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "generateId").getValue().toJson());
            objUnwrap = null;
        }
        return (Boolean) obj;
    }

    public final PromoteId getPromoteId() {
        TileCacheBudget tileCacheBudgetUnwrap;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get promoteId: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "promoteId");
            if (Intrinsics.areEqual("promoteId", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                tileCacheBudgetUnwrap = arrayList;
            } else if (Intrinsics.areEqual("promoteId", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                TileCacheBudget tileCacheBudgetUnwrapToTileCacheBudget = SourceUtils.unwrapToTileCacheBudget(value);
                if (tileCacheBudgetUnwrapToTileCacheBudget == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                }
                tileCacheBudgetUnwrap = tileCacheBudgetUnwrapToTileCacheBudget;
            } else {
                tileCacheBudgetUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Object.class);
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property promoteId failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "promoteId").getValue().toJson());
            tileCacheBudgetUnwrap = null;
        }
        if (tileCacheBudgetUnwrap != null) {
            return PromoteId.INSTANCE.fromProperty$extension_style_release(tileCacheBudgetUnwrap);
        }
        return null;
    }

    public final Boolean getAutoMaxZoom() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get autoMaxZoom: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "autoMaxZoom");
            if (Intrinsics.areEqual("autoMaxZoom", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Boolean) arrayList;
            } else if (Intrinsics.areEqual("autoMaxZoom", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Boolean) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Boolean.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property autoMaxZoom failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "autoMaxZoom").getValue().toJson());
            objUnwrap = null;
        }
        return (Boolean) obj;
    }

    public static GeoJsonSource prefetchZoomDelta$default(GeoJsonSource geoJsonSource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 4;
        }
        return geoJsonSource.prefetchZoomDelta(j);
    }

    public final GeoJsonSource prefetchZoomDelta(long value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("prefetch-zoom-delta", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))));
        return this;
    }

    public final Long getPrefetchZoomDelta() {
        Object objUnwrap;
        Object obj;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get prefetch-zoom-delta: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "prefetch-zoom-delta");
            if (Intrinsics.areEqual("prefetch-zoom-delta", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Long) arrayList;
            } else if (Intrinsics.areEqual("prefetch-zoom-delta", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property prefetch-zoom-delta failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "prefetch-zoom-delta").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final GeoJsonSource tileCacheBudget(TileCacheBudget value) {
        Intrinsics.checkNotNullParameter(value, "value");
        setVolatileProperty$extension_style_release(new PropertyValue<>("tile-cache-budget", TypeUtils.INSTANCE.wrapToValue(value)));
        return this;
    }

    public final TileCacheBudget getTileCacheBudget() {
        Object objUnwrap;
        Object objUnwrapToTileCacheBudget;
        GeoJsonSource geoJsonSource = this;
        MapboxStyleManager delegate = geoJsonSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tile-cache-budget: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "tile-cache-budget");
            if (Intrinsics.areEqual("tile-cache-budget", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                objUnwrapToTileCacheBudget = (TileCacheBudget) arrayList;
            } else if (Intrinsics.areEqual("tile-cache-budget", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                objUnwrapToTileCacheBudget = SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, TileCacheBudget.class);
                objUnwrapToTileCacheBudget = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property tile-cache-budget failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(geoJsonSource.getSourceId(), "tile-cache-budget").getValue().toJson());
            objUnwrap = null;
        }
        return (TileCacheBudget) objUnwrapToTileCacheBudget;
    }

    public static GeoJsonSource feature$default(GeoJsonSource geoJsonSource, Feature feature, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return geoJsonSource.feature(feature, str);
    }

    public final GeoJsonSource feature(Feature value, String dataId) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        return applyGeoJsonData(value, dataId);
    }

    public static GeoJsonSource featureCollection$default(GeoJsonSource geoJsonSource, FeatureCollection featureCollection, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return geoJsonSource.featureCollection(featureCollection, str);
    }

    public final GeoJsonSource featureCollection(FeatureCollection value, String dataId) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        return applyGeoJsonData(value, dataId);
    }

    public static GeoJsonSource geometry$default(GeoJsonSource geoJsonSource, Geometry geometry, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return geoJsonSource.geometry(geometry, str);
    }

    public final GeoJsonSource geometry(Geometry value, String dataId) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        return applyGeoJsonData(value, dataId);
    }

    private final GeoJsonSource applyGeoJsonData(GeoJson data, String dataId) {
        setGeoJson(data, dataId);
        return this;
    }

    @Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0003J\u0012\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001dH\u0007J\u0010\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001dJ\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001fJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001fJ\u001a\u0010%\u001a\u00020\u00002\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013J\u0016\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)J\u001e\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u00032\u0006\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020)J\u0010\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001fJ\u001a\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003H\u0007J\u001a\u0010,\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020-2\b\b\u0002\u0010\t\u001a\u00020\u0003H\u0007J\u001a\u0010.\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020/2\b\b\u0002\u0010\t\u001a\u00020\u0003H\u0007J\u0010\u00100\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001dJ\u0018\u0010\f\u001a\u0002012\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0003H\u0002J\u001a\u00102\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u0002032\b\b\u0002\u0010\t\u001a\u00020\u0003H\u0007J\u0010\u00104\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001fJ\u0010\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001fJ\u000e\u00107\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u000208J\u000e\u00109\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020:J\u0010\u0010;\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020<J\u001a\u0010=\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003H\u0007R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004R\u001a\u0010\t\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\u0004R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00140\u0013X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0007R$\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00140\u0013X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016¨\u0006>"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource$Builder;", "", "sourceId", "", "(Ljava/lang/String;)V", "data", "getData$extension_style_release", "()Ljava/lang/String;", "setData$extension_style_release", "dataId", "getDataId$extension_style_release", "setDataId$extension_style_release", "geoJson", "Lcom/mapbox/geojson/GeoJson;", "getGeoJson$extension_style_release", "()Lcom/mapbox/geojson/GeoJson;", "setGeoJson$extension_style_release", "(Lcom/mapbox/geojson/GeoJson;)V", LightUtils.LIGHT_PROPERTIES, "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "getProperties$extension_style_release", "()Ljava/util/HashMap;", "getSourceId", "volatileProperties", "getVolatileProperties$extension_style_release", "attribution", "value", "autoMaxZoom", "", "buffer", "", "build", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;", "cluster", "clusterMaxZoom", "clusterMinPoints", "clusterProperties", "clusterProperty", "propertyName", "mapExpr", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "operatorExpr", "clusterRadius", "feature", "Lcom/mapbox/geojson/Feature;", "featureCollection", "Lcom/mapbox/geojson/FeatureCollection;", "generateId", "", "geometry", "Lcom/mapbox/geojson/Geometry;", "lineMetrics", "maxzoom", "prefetchZoomDelta", "promoteId", "Lcom/mapbox/maps/extension/style/types/PromoteId;", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "tolerance", "", ImagesContract.URL, "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @SourceDsl
    public static final class Builder {
        private String data;
        private String dataId;
        private GeoJson geoJson;
        private final HashMap<String, PropertyValue<?>> properties;
        private final String sourceId;
        private final HashMap<String, PropertyValue<?>> volatileProperties;

        public final Builder data(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return data$default(this, value, null, 2, null);
        }

        public final Builder feature(Feature value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return feature$default(this, value, null, 2, null);
        }

        public final Builder featureCollection(FeatureCollection value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return featureCollection$default(this, value, null, 2, null);
        }

        public final Builder geometry(Geometry value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return geometry$default(this, value, null, 2, null);
        }

        @Deprecated(message = "Method url() is deprecated in favor of data() method as they do the same thing", replaceWith = @ReplaceWith(expression = "data(value, dataId)", imports = {}))
        public final Builder url(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return url$default(this, value, null, 2, null);
        }

        public Builder(String sourceId) {
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.sourceId = sourceId;
            this.properties = new HashMap<>();
            this.volatileProperties = new HashMap<>();
            this.dataId = "";
        }

        public final String getSourceId() {
            return this.sourceId;
        }

        public final HashMap<String, PropertyValue<?>> getProperties$extension_style_release() {
            return this.properties;
        }

        public final HashMap<String, PropertyValue<?>> getVolatileProperties$extension_style_release() {
            return this.volatileProperties;
        }

        public final GeoJson getGeoJson() {
            return this.geoJson;
        }

        public final void setGeoJson$extension_style_release(GeoJson geoJson) {
            this.geoJson = geoJson;
        }

        public final String getData() {
            return this.data;
        }

        public final void setData$extension_style_release(String str) {
            this.data = str;
        }

        public final String getDataId() {
            return this.dataId;
        }

        public final void setDataId$extension_style_release(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.dataId = str;
        }

        public static Builder data$default(Builder builder, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = "";
            }
            return builder.data(str, str2);
        }

        public final Builder data(String value, String dataId) {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(dataId, "dataId");
            this.geoJson = null;
            this.data = value;
            this.dataId = dataId;
            return this;
        }

        public static Builder url$default(Builder builder, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = "";
            }
            return builder.url(str, str2);
        }

        @Deprecated(message = "Method url() is deprecated in favor of data() method as they do the same thing", replaceWith = @ReplaceWith(expression = "data(value, dataId)", imports = {}))
        public final Builder url(String value, String dataId) {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(dataId, "dataId");
            data(value, dataId);
            return this;
        }

        public static Builder maxzoom$default(Builder builder, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 18;
            }
            return builder.maxzoom(j);
        }

        public final Builder maxzoom(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("maxzoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder attribution(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("attribution", TypeUtils.INSTANCE.wrapToValue(value));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder buffer$default(Builder builder, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 128;
            }
            return builder.buffer(j);
        }

        public final Builder buffer(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("buffer", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder tolerance$default(Builder builder, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = 0.375d;
            }
            return builder.tolerance(d);
        }

        public final Builder tolerance(double value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("tolerance", TypeUtils.INSTANCE.wrapToValue(Double.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder cluster$default(Builder builder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return builder.cluster(z);
        }

        public final Builder cluster(boolean value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("cluster", TypeUtils.INSTANCE.wrapToValue(Boolean.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder clusterRadius$default(Builder builder, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 50;
            }
            return builder.clusterRadius(j);
        }

        public final Builder clusterRadius(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("clusterRadius", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder clusterMaxZoom(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("clusterMaxZoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder clusterMinPoints(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("clusterMinPoints", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder clusterProperties(HashMap<String, Object> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("clusterProperties", TypeUtils.INSTANCE.wrapToValue(value));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder clusterProperty(String propertyName, Expression operatorExpr, Expression mapExpr) {
            Value value;
            Intrinsics.checkNotNullParameter(propertyName, "propertyName");
            Intrinsics.checkNotNullParameter(operatorExpr, "operatorExpr");
            Intrinsics.checkNotNullParameter(mapExpr, "mapExpr");
            PropertyValue<?> propertyValue = this.properties.get("clusterProperties");
            Object contents = (propertyValue == null || (value = propertyValue.getValue()) == null) ? null : value.getContents();
            HashMap map = contents instanceof HashMap ? (HashMap) contents : null;
            if (map == null) {
                map = new HashMap();
            }
            map.put(propertyName, new Value((List<Value>) CollectionsKt.listOf((Object[]) new Expression[]{operatorExpr, mapExpr})));
            PropertyValue<?> propertyValue2 = new PropertyValue<>("clusterProperties", TypeUtils.INSTANCE.wrapToValue(map));
            this.properties.put(propertyValue2.getPropertyName(), propertyValue2);
            return this;
        }

        public final Builder clusterProperty(String propertyName, Expression mapExpr) {
            Value value;
            Intrinsics.checkNotNullParameter(propertyName, "propertyName");
            Intrinsics.checkNotNullParameter(mapExpr, "mapExpr");
            PropertyValue<?> propertyValue = this.properties.get("clusterProperties");
            Object contents = (propertyValue == null || (value = propertyValue.getValue()) == null) ? null : value.getContents();
            HashMap map = contents instanceof HashMap ? (HashMap) contents : null;
            if (map == null) {
                map = new HashMap();
            }
            map.put(propertyName, mapExpr);
            PropertyValue<?> propertyValue2 = new PropertyValue<>("clusterProperties", TypeUtils.INSTANCE.wrapToValue(map));
            this.properties.put(propertyValue2.getPropertyName(), propertyValue2);
            return this;
        }

        public static Builder lineMetrics$default(Builder builder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return builder.lineMetrics(z);
        }

        public final Builder lineMetrics(boolean value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("lineMetrics", TypeUtils.INSTANCE.wrapToValue(Boolean.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder generateId$default(Builder builder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return builder.generateId(z);
        }

        public final Builder generateId(boolean value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("generateId", TypeUtils.INSTANCE.wrapToValue(Boolean.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder promoteId(PromoteId value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("promoteId", value.toValue$extension_style_release());
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder autoMaxZoom$default(Builder builder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return builder.autoMaxZoom(z);
        }

        public final Builder autoMaxZoom(boolean value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("autoMaxZoom", TypeUtils.INSTANCE.wrapToValue(Boolean.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder prefetchZoomDelta$default(Builder builder, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 4;
            }
            return builder.prefetchZoomDelta(j);
        }

        public final Builder prefetchZoomDelta(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("prefetch-zoom-delta", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.volatileProperties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder tileCacheBudget(TileCacheBudget value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("tile-cache-budget", TypeUtils.INSTANCE.wrapToValue(value));
            this.volatileProperties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder feature$default(Builder builder, Feature feature, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = "";
            }
            return builder.feature(feature, str);
        }

        public final Builder feature(Feature value, String dataId) {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(dataId, "dataId");
            geoJson(value, dataId);
            return this;
        }

        public static Builder featureCollection$default(Builder builder, FeatureCollection featureCollection, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = "";
            }
            return builder.featureCollection(featureCollection, str);
        }

        public final Builder featureCollection(FeatureCollection value, String dataId) {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(dataId, "dataId");
            geoJson(value, dataId);
            return this;
        }

        public static Builder geometry$default(Builder builder, Geometry geometry, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = "";
            }
            return builder.geometry(geometry, str);
        }

        public final Builder geometry(Geometry value, String dataId) {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(dataId, "dataId");
            geoJson(value, dataId);
            return this;
        }

        private final void geoJson(GeoJson geoJson, String dataId) {
            this.geoJson = geoJson;
            this.dataId = dataId;
            this.data = null;
        }

        public final GeoJsonSource build() {
            PropertyValue<?> propertyValue = new PropertyValue<>("data", TypeUtils.INSTANCE.wrapToValue(""));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return new GeoJsonSource(this, null);
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0000¢\u0006\u0002\b(R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\bR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\bR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\bR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\fR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\fR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\bR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\bR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u00020 8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\u0002\u001a\u0004\b\"\u0010#¨\u0006)"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource$Companion;", "", "()V", "TAG", "", "defaultBuffer", "", "getDefaultBuffer", "()Ljava/lang/Long;", "defaultCluster", "", "getDefaultCluster", "()Ljava/lang/Boolean;", "defaultClusterMaxZoom", "getDefaultClusterMaxZoom", "defaultClusterMinPoints", "getDefaultClusterMinPoints", "defaultClusterRadius", "getDefaultClusterRadius", "defaultGenerateId", "getDefaultGenerateId", "defaultLineMetrics", "getDefaultLineMetrics", "defaultMaxzoom", "getDefaultMaxzoom", "defaultPrefetchZoomDelta", "getDefaultPrefetchZoomDelta", "defaultTolerance", "", "getDefaultTolerance", "()Ljava/lang/Double;", "workerThread", "Landroid/os/HandlerThread;", "getWorkerThread$extension_style_release$annotations", "getWorkerThread$extension_style_release", "()Landroid/os/HandlerThread;", "toGeoJsonData", "Lcom/mapbox/maps/GeoJSONSourceData;", "geoJson", "Lcom/mapbox/geojson/GeoJson;", "toGeoJsonData$extension_style_release", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getWorkerThread$extension_style_release$annotations() {
        }

        private Companion() {
        }

        public final HandlerThread getWorkerThread$extension_style_release() {
            return GeoJsonSource.workerThread;
        }

        public final GeoJSONSourceData toGeoJsonData$extension_style_release(GeoJson geoJson) {
            Intrinsics.checkNotNullParameter(geoJson, "geoJson");
            if (geoJson instanceof Feature) {
                GeoJSONSourceData geoJSONSourceDataValueOf = GeoJSONSourceData.valueOf((Feature) geoJson);
                Intrinsics.checkNotNullExpressionValue(geoJSONSourceDataValueOf, "valueOf(geoJson)");
                return geoJSONSourceDataValueOf;
            }
            if (geoJson instanceof Geometry) {
                GeoJSONSourceData geoJSONSourceDataValueOf2 = GeoJSONSourceData.valueOf((Geometry) geoJson);
                Intrinsics.checkNotNullExpressionValue(geoJSONSourceDataValueOf2, "valueOf(geoJson)");
                return geoJSONSourceDataValueOf2;
            }
            if (!(geoJson instanceof FeatureCollection)) {
                throw new RuntimeException("Incorrect GeoJson data format");
            }
            List<Feature> listFeatures = ((FeatureCollection) geoJson).features();
            Intrinsics.checkNotNull(listFeatures);
            GeoJSONSourceData geoJSONSourceDataValueOf3 = GeoJSONSourceData.valueOf(listFeatures);
            Intrinsics.checkNotNullExpressionValue(geoJSONSourceDataValueOf3, "valueOf(geoJson.features()!!)");
            return geoJSONSourceDataValueOf3;
        }

        public final Long getDefaultMaxzoom() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…lue(\"geojson\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Long getDefaultBuffer() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "buffer");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…alue(\"geojson\", \"buffer\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Double getDefaultTolerance() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "tolerance");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…e(\"geojson\", \"tolerance\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Boolean getDefaultCluster() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "cluster");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…lue(\"geojson\", \"cluster\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Long getDefaultClusterRadius() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "clusterRadius");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…eojson\", \"clusterRadius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Long getDefaultClusterMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "clusterMaxZoom");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…ojson\", \"clusterMaxZoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Long getDefaultClusterMinPoints() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "clusterMinPoints");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…son\", \"clusterMinPoints\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Boolean getDefaultLineMetrics() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "lineMetrics");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…\"geojson\", \"lineMetrics\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Boolean getDefaultGenerateId() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "generateId");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…(\"geojson\", \"generateId\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Long getDefaultPrefetchZoomDelta() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("geojson", "prefetch-zoom-delta");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…\", \"prefetch-zoom-delta\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("GEOJSON_PARSER", 0);
        handlerThread.start();
        workerThread = handlerThread;
    }
}
