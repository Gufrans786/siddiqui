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
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u0000 %2\u00020\u0001:\u0003$%&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\r\u0010!\u001a\u00020\u0006H\u0010¢\u0006\u0002\b\"J\u0010\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010#\u001a\u00020\u000fJ\u0010\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010#\u001a\u00020\u000fJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0018J\u0014\u0010\u001d\u001a\u00020\u00002\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00060\nJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0006R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011R\u0019\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\rR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0011R\u0019\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\rR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b \u0010\b¨\u0006'"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource;", "Lcom/mapbox/maps/extension/style/sources/Source;", "builder", "Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource$Builder;", "(Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource$Builder;)V", "attribution", "", "getAttribution", "()Ljava/lang/String;", "bounds", "", "", "getBounds", "()Ljava/util/List;", "maxzoom", "", "getMaxzoom", "()Ljava/lang/Long;", "minzoom", "getMinzoom", "rasterLayers", "Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource$RasterDataLayer;", "getRasterLayers", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "getTileCacheBudget", "()Lcom/mapbox/maps/TileCacheBudget;", "tileSize", "getTileSize", "tiles", "getTiles", ImagesContract.URL, "getUrl", "getType", "getType$extension_style_release", "value", "Builder", "Companion", "RasterDataLayer", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RasterArraySource extends Source {

    public static final Companion INSTANCE = new Companion(null);

    public RasterArraySource(Builder builder) {
        super(builder.getSourceId());
        Intrinsics.checkNotNullParameter(builder, "builder");
        getSourceProperties$extension_style_release().putAll(builder.getProperties$extension_style_release());
        getVolatileSourceProperties$extension_style_release().putAll(builder.getVolatileProperties$extension_style_release());
    }

    @Override
    public String getType$extension_style_release() {
        return "raster-array";
    }

    public final RasterArraySource url(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Source.setProperty$extension_style_release$default(this, new PropertyValue(ImagesContract.URL, TypeUtils.INSTANCE.wrapToValue(value)), false, 2, null);
        return this;
    }

    public final String getUrl() {
        Object objUnwrap;
        Object obj;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get url: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), ImagesContract.URL);
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
                    arrayList.add(new RasterDataLayer(str, arrayList2));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), ImagesContract.URL).getValue().toJson());
            objUnwrap = null;
        }
        return (String) obj;
    }

    public final RasterArraySource tiles(List<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Source.setProperty$extension_style_release$default(this, new PropertyValue("tiles", TypeUtils.INSTANCE.wrapToValue(value)), false, 2, null);
        return this;
    }

    public final List<String> getTiles() {
        Object objUnwrap;
        ArrayList arrayList;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tiles: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "tiles");
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
                    arrayList2.add(new RasterDataLayer(str, arrayList3));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "tiles").getValue().toJson());
            objUnwrap = null;
        }
        return (List) arrayList;
    }

    public final List<Double> getBounds() {
        Object objUnwrap;
        ArrayList arrayList;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get bounds: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "bounds");
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
                    arrayList2.add(new RasterDataLayer(str, arrayList3));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "bounds").getValue().toJson());
            objUnwrap = null;
        }
        return (List) arrayList;
    }

    public static RasterArraySource minzoom$default(RasterArraySource rasterArraySource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        return rasterArraySource.minzoom(j);
    }

    public final RasterArraySource minzoom(long value) {
        Source.setProperty$extension_style_release$default(this, new PropertyValue("minzoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))), false, 2, null);
        return this;
    }

    public final Long getMinzoom() {
        Object objUnwrap;
        Object obj;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get minzoom: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "minzoom");
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
                    arrayList.add(new RasterDataLayer(str, arrayList2));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "minzoom").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public static RasterArraySource maxzoom$default(RasterArraySource rasterArraySource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 22;
        }
        return rasterArraySource.maxzoom(j);
    }

    public final RasterArraySource maxzoom(long value) {
        Source.setProperty$extension_style_release$default(this, new PropertyValue("maxzoom", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))), false, 2, null);
        return this;
    }

    public final Long getMaxzoom() {
        Object objUnwrap;
        Object obj;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get maxzoom: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "maxzoom");
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
                    arrayList.add(new RasterDataLayer(str, arrayList2));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "maxzoom").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final Long getTileSize() {
        Object objUnwrap;
        Object obj;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tileSize: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "tileSize");
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
                    arrayList.add(new RasterDataLayer(str, arrayList2));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "tileSize").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    public final String getAttribution() {
        Object objUnwrap;
        Object obj;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get attribution: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "attribution");
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
                    arrayList.add(new RasterDataLayer(str, arrayList2));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "attribution").getValue().toJson());
            objUnwrap = null;
        }
        return (String) obj;
    }

    public final List<RasterDataLayer> getRasterLayers() {
        Object objUnwrap;
        ArrayList arrayList;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get rasterLayers: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "rasterLayers");
            if (Intrinsics.areEqual("rasterLayers", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
                    arrayList2.add(new RasterDataLayer(str, arrayList3));
                }
                arrayList = arrayList2;
            } else if (Intrinsics.areEqual("rasterLayers", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                arrayList = (List) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, List.class);
                arrayList = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property rasterLayers failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "rasterLayers").getValue().toJson());
            objUnwrap = null;
        }
        return (List) arrayList;
    }

    public final RasterArraySource tileCacheBudget(TileCacheBudget value) {
        Intrinsics.checkNotNullParameter(value, "value");
        setVolatileProperty$extension_style_release(new PropertyValue<>("tile-cache-budget", TypeUtils.INSTANCE.wrapToValue(value)));
        return this;
    }

    public final TileCacheBudget getTileCacheBudget() {
        Object objUnwrap;
        Object objUnwrapToTileCacheBudget;
        RasterArraySource rasterArraySource = this;
        MapboxStyleManager delegate = rasterArraySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tile-cache-budget: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "tile-cache-budget");
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
                    arrayList.add(new RasterDataLayer(str, arrayList2));
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(rasterArraySource.getSourceId(), "tile-cache-budget").getValue().toJson());
            objUnwrap = null;
        }
        return (TileCacheBudget) objUnwrapToTileCacheBudget;
    }

    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003J\u0016\u0010\u0010\u001a\u00020\u00002\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ5\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00032\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u00112\u0017\u0010\u001e\u001a\u0013\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001f¢\u0006\u0002\b\"J\u0010\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u0016J\u0014\u0010\u001d\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003R$\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006%"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource$Builder;", "", "sourceId", "", "(Ljava/lang/String;)V", LightUtils.LIGHT_PROPERTIES, "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "getProperties$extension_style_release", "()Ljava/util/HashMap;", "getSourceId", "()Ljava/lang/String;", "volatileProperties", "getVolatileProperties$extension_style_release", "attribution", "value", "bounds", "", "", "build", "Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource;", "maxzoom", "", "minzoom", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "tileSet", "Lcom/mapbox/maps/extension/style/sources/TileSet;", "tilejson", "tiles", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/sources/TileSet$Builder;", "", "Lkotlin/ExtensionFunctionType;", "tileSize", ImagesContract.URL, "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
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

        public final Builder tileCacheBudget(TileCacheBudget value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("tile-cache-budget", TypeUtils.INSTANCE.wrapToValue(value));
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

        public final Builder tileSet(String tilejson, List<String> tiles, Function1<? super TileSet.Builder, Unit> block) {
            Intrinsics.checkNotNullParameter(tilejson, "tilejson");
            Intrinsics.checkNotNullParameter(tiles, "tiles");
            Intrinsics.checkNotNullParameter(block, "block");
            TileSet.Builder builder = new TileSet.Builder(tilejson, tiles);
            block.invoke(builder);
            for (Map.Entry<String, Value> entry : builder.build().entrySet()) {
                PropertyValue<?> propertyValue = new PropertyValue<>(entry.getKey(), entry.getValue());
                this.properties.put(propertyValue.getPropertyName(), propertyValue);
            }
            return this;
        }

        public final RasterArraySource build() {
            return new RasterArraySource(this);
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource$RasterDataLayer;", "", "layerId", "", "bands", "", "(Ljava/lang/String;Ljava/util/List;)V", "getBands", "()Ljava/util/List;", "getLayerId", "()Ljava/lang/String;", "equals", "", "other", "hashCode", "", "toString", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class RasterDataLayer {
        private final List<String> bands;
        private final String layerId;

        public RasterDataLayer(String layerId, List<String> bands) {
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bands, "bands");
            this.layerId = layerId;
            this.bands = bands;
        }

        public final String getLayerId() {
            return this.layerId;
        }

        public final List<String> getBands() {
            return this.bands;
        }

        public String toString() {
            return "RasterDataLayer(layerId=" + this.layerId + ", bands:" + this.bands + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        public int hashCode() {
            return Objects.hash(this.layerId, this.bands);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.extension.style.sources.generated.RasterArraySource.RasterDataLayer");
            RasterDataLayer rasterDataLayer = (RasterDataLayer) other;
            return Intrinsics.areEqual(this.layerId, rasterDataLayer.layerId) && Intrinsics.areEqual(this.bands, rasterDataLayer.bands);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource$Companion;", "", "()V", "defaultMaxzoom", "", "getDefaultMaxzoom", "()Ljava/lang/Long;", "defaultMinzoom", "getDefaultMinzoom", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Long getDefaultMinzoom() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-array", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…raster-array\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }

        public final Long getDefaultMaxzoom() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("raster-array", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…raster-array\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }
    }
}
