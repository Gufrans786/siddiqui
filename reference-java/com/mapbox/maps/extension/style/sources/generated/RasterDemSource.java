package com.mapbox.maps.extension.style.sources.generated;

import android.util.Log;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.TileCacheBudget;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.sources.Source;
import com.mapbox.maps.extension.style.sources.SourceUtils;
import com.mapbox.maps.extension.style.sources.TileSet;
import com.mapbox.maps.extension.style.types.SourceDsl;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 52\u00020\u0001:\u000245B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\r\u00101\u001a\u00020\u0006H\u0010¢\u0006\u0002\b2J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u00103\u001a\u00020\u0013J\u0010\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u00103\u001a\u00020\u000bJ\u0010\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u00103\u001a\u00020\u0013J\u0010\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u00103\u001a\u00020\u0013J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u00103\u001a\u00020 J\u0010\u0010#\u001a\u00020\u00002\b\b\u0002\u00103\u001a\u00020\u000bJ\u0010\u0010%\u001a\u00020\u00002\b\b\u0002\u00103\u001a\u00020\u000bJ\u0014\u0010)\u001a\u00020\u00002\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00060\nJ\u000e\u0010+\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0006J\u0010\u0010-\u001a\u00020\u00002\b\b\u0002\u00103\u001a\u00020.R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0015R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0015R\u0013\u0010\u001f\u001a\u0004\u0018\u00010 8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0013\u0010#\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b$\u0010\u001aR\u0013\u0010%\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b&\u0010\u001aR\u0013\u0010'\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b(\u0010\u0015R\u0019\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b*\u0010\rR\u0013\u0010+\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b,\u0010\bR\u0013\u0010-\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\b/\u00100¨\u00066"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/RasterDemSource;", "Lcom/mapbox/maps/extension/style/sources/Source;", "builder", "Lcom/mapbox/maps/extension/style/sources/generated/RasterDemSource$Builder;", "(Lcom/mapbox/maps/extension/style/sources/generated/RasterDemSource$Builder;)V", "attribution", "", "getAttribution", "()Ljava/lang/String;", "bounds", "", "", "getBounds", "()Ljava/util/List;", "encoding", "Lcom/mapbox/maps/extension/style/sources/generated/Encoding;", "getEncoding", "()Lcom/mapbox/maps/extension/style/sources/generated/Encoding;", "maxOverscaleFactorForParentTiles", "", "getMaxOverscaleFactorForParentTiles", "()Ljava/lang/Long;", "maxzoom", "getMaxzoom", "minimumTileUpdateInterval", "getMinimumTileUpdateInterval", "()Ljava/lang/Double;", "minzoom", "getMinzoom", "prefetchZoomDelta", "getPrefetchZoomDelta", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "getTileCacheBudget", "()Lcom/mapbox/maps/TileCacheBudget;", "tileNetworkRequestsDelay", "getTileNetworkRequestsDelay", "tileRequestsDelay", "getTileRequestsDelay", "tileSize", "getTileSize", "tiles", "getTiles", ImagesContract.URL, "getUrl", "volatile", "", "getVolatile", "()Ljava/lang/Boolean;", "getType", "getType$extension_style_release", "value", "Builder", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RasterDemSource extends Source {

    public static final Companion INSTANCE = new Companion(null);

    public RasterDemSource(Builder builder) {
        super(builder.getSourceId());
        Intrinsics.checkNotNullParameter(builder, "builder");
        getSourceProperties$extension_style_release().putAll(builder.getProperties$extension_style_release());
        getVolatileSourceProperties$extension_style_release().putAll(builder.getVolatileProperties$extension_style_release());
    }

    @Override
    public String getType$extension_style_release() {
        return "raster-dem";
    }

    public final RasterDemSource url(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Source.setProperty$extension_style_release$default(this, new PropertyValue(ImagesContract.URL, TypeUtils.INSTANCE.wrapToValue(value)), false, 2, null);
        return this;
    }

    public final String getUrl() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get url: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), ImagesContract.URL);
            if (Intrinsics.areEqual(ImagesContract.URL, "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual(ImagesContract.URL, "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (String) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, String.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property url failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), ImagesContract.URL).getValue().toJson());
            objUnwrap = null;
        }
        return (String) obj;
    }

    public final RasterDemSource tiles(List<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Source.setProperty$extension_style_release$default(this, new PropertyValue("tiles", TypeUtils.INSTANCE.wrapToValue(value)), false, 2, null);
        return this;
    }

    public final List<String> getTiles() {
        Object objUnwrap;
        ArrayList arrayList;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tiles: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tiles");
            if (Intrinsics.areEqual("tiles", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList3.add((String) contents3);
                    }
                    arrayList2.add(new RasterArraySource.RasterDataLayer(str, arrayList3));
                }
                arrayList = arrayList2;
            } else if (Intrinsics.areEqual("tiles", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                arrayList = (List) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, List.class);
                arrayList = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property tiles failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tiles").getValue().toJson());
            objUnwrap = null;
        }
        return (List) arrayList;
    }

    public final List<Double> getBounds() {
        Object objUnwrap;
        ArrayList arrayList;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get bounds: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "bounds");
            if (Intrinsics.areEqual("bounds", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList3.add((String) contents3);
                    }
                    arrayList2.add(new RasterArraySource.RasterDataLayer(str, arrayList3));
                }
                arrayList = arrayList2;
            } else if (Intrinsics.areEqual("bounds", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                arrayList = (List) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, List.class);
                arrayList = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property bounds failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "bounds").getValue().toJson());
            objUnwrap = null;
        }
        return (List) arrayList;
    }

    public static RasterDemSource minzoom$default(RasterDemSource rasterDemSource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        return rasterDemSource.minzoom(j);
    }

    public final RasterDemSource minzoom(long value) {
        Source.setProperty$extension_style_release$default(this, new PropertyValue("minzoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))), false, 2, null);
        return this;
    }

    public final Long getMinzoom() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get minzoom: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "minzoom");
            if (Intrinsics.areEqual("minzoom", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("minzoom", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property minzoom failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "minzoom").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public static RasterDemSource maxzoom$default(RasterDemSource rasterDemSource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 22;
        }
        return rasterDemSource.maxzoom(j);
    }

    public final RasterDemSource maxzoom(long value) {
        Source.setProperty$extension_style_release$default(this, new PropertyValue("maxzoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))), false, 2, null);
        return this;
    }

    public final Long getMaxzoom() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get maxzoom: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "maxzoom");
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "maxzoom").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final Long getTileSize() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tileSize: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tileSize");
            if (Intrinsics.areEqual("tileSize", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("tileSize", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property tileSize failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tileSize").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final String getAttribution() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get attribution: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "attribution");
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "attribution").getValue().toJson());
            objUnwrap = null;
        }
        return (String) obj;
    }

    public final Encoding getEncoding() {
        Object objUnwrap;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get encoding: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "encoding");
            if (Intrinsics.areEqual("encoding", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
                objUnwrap = (String) arrayList;
            } else if (Intrinsics.areEqual("encoding", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                objUnwrap = (String) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, String.class);
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property encoding failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "encoding").getValue().toJson());
            objUnwrap = null;
        }
        String str2 = (String) objUnwrap;
        if (str2 == null) {
            return null;
        }
        Encoding.Companion companion = Encoding.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str2.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    public static RasterDemSource volatile$default(RasterDemSource rasterDemSource, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return rasterDemSource.m1040volatile(z);
    }

    public final RasterDemSource m1040volatile(boolean value) {
        Source.setProperty$extension_style_release$default(this, new PropertyValue("volatile", TypeUtils.INSTANCE.wrapToValue(Boolean.valueOf(value))), false, 2, null);
        return this;
    }

    public final Boolean getVolatile() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get volatile: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "volatile");
            if (Intrinsics.areEqual("volatile", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("volatile", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Boolean) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Boolean.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property volatile failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "volatile").getValue().toJson());
            objUnwrap = null;
        }
        return (Boolean) obj;
    }

    public static RasterDemSource prefetchZoomDelta$default(RasterDemSource rasterDemSource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 4;
        }
        return rasterDemSource.prefetchZoomDelta(j);
    }

    public final RasterDemSource prefetchZoomDelta(long value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("prefetch-zoom-delta", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))));
        return this;
    }

    public final Long getPrefetchZoomDelta() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get prefetch-zoom-delta: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "prefetch-zoom-delta");
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "prefetch-zoom-delta").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final RasterDemSource tileCacheBudget(TileCacheBudget value) {
        Intrinsics.checkNotNullParameter(value, "value");
        setVolatileProperty$extension_style_release(new PropertyValue<>("tile-cache-budget", TypeUtils.INSTANCE.wrapToValue(value)));
        return this;
    }

    public final TileCacheBudget getTileCacheBudget() {
        Object objUnwrap;
        Object objUnwrapToTileCacheBudget;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tile-cache-budget: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tile-cache-budget");
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tile-cache-budget").getValue().toJson());
            objUnwrap = null;
        }
        return (TileCacheBudget) objUnwrapToTileCacheBudget;
    }

    public static RasterDemSource minimumTileUpdateInterval$default(RasterDemSource rasterDemSource, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        return rasterDemSource.minimumTileUpdateInterval(d);
    }

    public final RasterDemSource minimumTileUpdateInterval(double value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("minimum-tile-update-interval", TypeUtils.INSTANCE.wrapToValue(Double.valueOf(value))));
        return this;
    }

    public final Double getMinimumTileUpdateInterval() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get minimum-tile-update-interval: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "minimum-tile-update-interval");
            if (Intrinsics.areEqual("minimum-tile-update-interval", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("minimum-tile-update-interval", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Double) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Double.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property minimum-tile-update-interval failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "minimum-tile-update-interval").getValue().toJson());
            objUnwrap = null;
        }
        return (Double) obj;
    }

    public final RasterDemSource maxOverscaleFactorForParentTiles(long value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("max-overscale-factor-for-parent-tiles", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))));
        return this;
    }

    public final Long getMaxOverscaleFactorForParentTiles() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get max-overscale-factor-for-parent-tiles: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "max-overscale-factor-for-parent-tiles");
            if (Intrinsics.areEqual("max-overscale-factor-for-parent-tiles", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("max-overscale-factor-for-parent-tiles", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property max-overscale-factor-for-parent-tiles failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "max-overscale-factor-for-parent-tiles").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public static RasterDemSource tileRequestsDelay$default(RasterDemSource rasterDemSource, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        return rasterDemSource.tileRequestsDelay(d);
    }

    public final RasterDemSource tileRequestsDelay(double value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("tile-requests-delay", TypeUtils.INSTANCE.wrapToValue(Double.valueOf(value))));
        return this;
    }

    public final Double getTileRequestsDelay() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tile-requests-delay: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tile-requests-delay");
            if (Intrinsics.areEqual("tile-requests-delay", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("tile-requests-delay", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Double) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Double.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property tile-requests-delay failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tile-requests-delay").getValue().toJson());
            objUnwrap = null;
        }
        return (Double) obj;
    }

    public static RasterDemSource tileNetworkRequestsDelay$default(RasterDemSource rasterDemSource, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        return rasterDemSource.tileNetworkRequestsDelay(d);
    }

    public final RasterDemSource tileNetworkRequestsDelay(double value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("tile-network-requests-delay", TypeUtils.INSTANCE.wrapToValue(Double.valueOf(value))));
        return this;
    }

    public final Double getTileNetworkRequestsDelay() {
        Object objUnwrap;
        Object obj;
        RasterDemSource rasterDemSource = this;
        MapboxStyleManager delegate = rasterDemSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tile-network-requests-delay: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tile-network-requests-delay");
            if (Intrinsics.areEqual("tile-network-requests-delay", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("tile-network-requests-delay", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Double) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Double.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property tile-network-requests-delay failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterDemSource.getSourceId(), "tile-network-requests-delay").getValue().toJson());
            objUnwrap = null;
        }
        return (Double) obj;
    }

    @Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003J\u0016\u0010\u0010\u001a\u00020\u00002\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0018J\u0010\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0012J\u0010\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0018J\u0010\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0012J\u0010\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0012J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"J5\u0010!\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u00032\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00030\u00112\u0017\u0010%\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(0&¢\u0006\u0002\b)J\u0010\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0018J\u0014\u0010$\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003J\u0010\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020-R$\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006."}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/RasterDemSource$Builder;", "", "sourceId", "", "(Ljava/lang/String;)V", LightUtils.LIGHT_PROPERTIES, "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "getProperties$extension_style_release", "()Ljava/util/HashMap;", "getSourceId", "()Ljava/lang/String;", "volatileProperties", "getVolatileProperties$extension_style_release", "attribution", "value", "bounds", "", "", "build", "Lcom/mapbox/maps/extension/style/sources/generated/RasterDemSource;", "encoding", "Lcom/mapbox/maps/extension/style/sources/generated/Encoding;", "maxOverscaleFactorForParentTiles", "", "maxzoom", "minimumTileUpdateInterval", "minzoom", "prefetchZoomDelta", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "tileNetworkRequestsDelay", "tileRequestsDelay", "tileSet", "Lcom/mapbox/maps/extension/style/sources/TileSet;", "tilejson", "tiles", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/sources/TileSet$RasterDemBuilder;", "", "Lkotlin/ExtensionFunctionType;", "tileSize", ImagesContract.URL, "volatile", "", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @SourceDsl
    public static final class Builder {
        private final HashMap<String, PropertyValue<?>> properties;
        private final String sourceId;
        private final HashMap<String, PropertyValue<?>> volatileProperties;

        public Builder(String sourceId) {
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.sourceId = sourceId;
            this.properties = new HashMap<>();
            this.volatileProperties = new HashMap<>();
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

        public final Builder url(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>(ImagesContract.URL, TypeUtils.INSTANCE.wrapToValue(value));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder tiles(List<String> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("tiles", TypeUtils.INSTANCE.wrapToValue(value));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder bounds$default(Builder builder, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(-180.0d), Double.valueOf(-85.051129d), Double.valueOf(180.0d), Double.valueOf(85.051129d)});
            }
            return builder.bounds(list);
        }

        public final Builder bounds(List<Double> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("bounds", TypeUtils.INSTANCE.wrapToValue(value));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder minzoom$default(Builder builder, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 0;
            }
            return builder.minzoom(j);
        }

        public final Builder minzoom(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("minzoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder maxzoom$default(Builder builder, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 22;
            }
            return builder.maxzoom(j);
        }

        public final Builder maxzoom(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("maxzoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder tileSize$default(Builder builder, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 512;
            }
            return builder.tileSize(j);
        }

        public final Builder tileSize(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("tileSize", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder attribution(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("attribution", TypeUtils.INSTANCE.wrapToValue(value));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder encoding$default(Builder builder, Encoding encoding, int i, Object obj) {
            if ((i & 1) != 0) {
                encoding = Encoding.MAPBOX;
            }
            return builder.encoding(encoding);
        }

        public final Builder encoding(Encoding value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("encoding", TypeUtils.INSTANCE.wrapToValue(value.getValue()));
            this.properties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder volatile$default(Builder builder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return builder.m1041volatile(z);
        }

        public final Builder m1041volatile(boolean value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("volatile", TypeUtils.INSTANCE.wrapToValue(Boolean.valueOf(value)));
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

        public static Builder minimumTileUpdateInterval$default(Builder builder, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return builder.minimumTileUpdateInterval(d);
        }

        public final Builder minimumTileUpdateInterval(double value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("minimum-tile-update-interval", TypeUtils.INSTANCE.wrapToValue(Double.valueOf(value)));
            this.volatileProperties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder maxOverscaleFactorForParentTiles(long value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("max-overscale-factor-for-parent-tiles", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value)));
            this.volatileProperties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder tileRequestsDelay$default(Builder builder, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return builder.tileRequestsDelay(d);
        }

        public final Builder tileRequestsDelay(double value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("tile-requests-delay", TypeUtils.INSTANCE.wrapToValue(Double.valueOf(value)));
            this.volatileProperties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public static Builder tileNetworkRequestsDelay$default(Builder builder, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return builder.tileNetworkRequestsDelay(d);
        }

        public final Builder tileNetworkRequestsDelay(double value) {
            PropertyValue<?> propertyValue = new PropertyValue<>("tile-network-requests-delay", TypeUtils.INSTANCE.wrapToValue(Double.valueOf(value)));
            this.volatileProperties.put(propertyValue.getPropertyName(), propertyValue);
            return this;
        }

        public final Builder tileSet(TileSet tileSet) {
            Intrinsics.checkNotNullParameter(tileSet, "tileSet");
            for (Map.Entry<String, Value> entry : tileSet.entrySet()) {
                PropertyValue<?> propertyValue = new PropertyValue<>(entry.getKey(), entry.getValue());
                this.properties.put(propertyValue.getPropertyName(), propertyValue);
            }
            return this;
        }

        public final Builder tileSet(String tilejson, List<String> tiles, Function1<? super TileSet.RasterDemBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(tilejson, "tilejson");
            Intrinsics.checkNotNullParameter(tiles, "tiles");
            Intrinsics.checkNotNullParameter(block, "block");
            TileSet.RasterDemBuilder rasterDemBuilder = new TileSet.RasterDemBuilder(tilejson, tiles);
            block.invoke(rasterDemBuilder);
            for (Map.Entry<String, Value> entry : rasterDemBuilder.build().entrySet()) {
                PropertyValue<?> propertyValue = new PropertyValue<>(entry.getKey(), entry.getValue());
                this.properties.put(propertyValue.getPropertyName(), propertyValue);
            }
            return this;
        }

        public final RasterDemSource build() {
            return new RasterDemSource(this);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\nR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\nR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000eR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000eR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/RasterDemSource$Companion;", "", "()V", "defaultEncoding", "Lcom/mapbox/maps/extension/style/sources/generated/Encoding;", "getDefaultEncoding", "()Lcom/mapbox/maps/extension/style/sources/generated/Encoding;", "defaultMaxzoom", "", "getDefaultMaxzoom", "()Ljava/lang/Long;", "defaultMinimumTileUpdateInterval", "", "getDefaultMinimumTileUpdateInterval", "()Ljava/lang/Double;", "defaultMinzoom", "getDefaultMinzoom", "defaultPrefetchZoomDelta", "getDefaultPrefetchZoomDelta", "defaultTileNetworkRequestsDelay", "getDefaultTileNetworkRequestsDelay", "defaultTileRequestsDelay", "getDefaultTileRequestsDelay", "defaultVolatile", "", "getDefaultVolatile", "()Ljava/lang/Boolean;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Long getDefaultMinzoom() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…(\"raster-dem\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Long getDefaultMaxzoom() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…(\"raster-dem\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Encoding getDefaultEncoding() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "encoding");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…\"raster-dem\", \"encoding\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            Encoding.Companion companion = Encoding.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Boolean getDefaultVolatile() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "volatile");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…\"raster-dem\", \"volatile\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Long getDefaultPrefetchZoomDelta() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "prefetch-zoom-delta");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…\", \"prefetch-zoom-delta\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Double getDefaultMinimumTileUpdateInterval() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "minimum-tile-update-interval");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…um-tile-update-interval\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultTileRequestsDelay() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "tile-requests-delay");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…\", \"tile-requests-delay\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultTileNetworkRequestsDelay() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-dem", "tile-network-requests-delay");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…-network-requests-delay\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }
    }
}
