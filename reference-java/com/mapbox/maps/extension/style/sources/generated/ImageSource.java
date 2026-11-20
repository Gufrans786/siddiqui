package com.mapbox.maps.extension.style.sources.generated;

import android.util.Log;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.sources.Source;
import com.mapbox.maps.extension.style.sources.SourceUtils;
import com.mapbox.maps.extension.style.types.SourceDsl;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00002\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0006J\r\u0010\u0013\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0014J\u0010\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0012\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000fR\u001f\u0010\u0005\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/ImageSource;", "Lcom/mapbox/maps/extension/style/sources/Source;", "builder", "Lcom/mapbox/maps/extension/style/sources/generated/ImageSource$Builder;", "(Lcom/mapbox/maps/extension/style/sources/generated/ImageSource$Builder;)V", "coordinates", "", "", "getCoordinates", "()Ljava/util/List;", "prefetchZoomDelta", "", "getPrefetchZoomDelta", "()Ljava/lang/Long;", ImagesContract.URL, "", "getUrl", "()Ljava/lang/String;", "value", "getType", "getType$extension_style_release", "Builder", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImageSource extends Source {

    public static final Companion INSTANCE = new Companion(null);

    public ImageSource(Builder builder) {
        super(builder.getSourceId());
        Intrinsics.checkNotNullParameter(builder, "builder");
        getSourceProperties$extension_style_release().putAll(builder.getProperties$extension_style_release());
        getVolatileSourceProperties$extension_style_release().putAll(builder.getVolatileProperties$extension_style_release());
    }

    @Override
    public String getType$extension_style_release() {
        return "image";
    }

    public final ImageSource url(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Source.setProperty$extension_style_release$default(this, new PropertyValue(ImagesContract.URL, TypeUtils.INSTANCE.wrapToValue(value)), false, 2, null);
        return this;
    }

    public final String getUrl() {
        Object objUnwrap;
        Object obj;
        ImageSource imageSource = this;
        MapboxStyleManager delegate = imageSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get url: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(imageSource.getSourceId(), ImagesContract.URL);
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(imageSource.getSourceId(), ImagesContract.URL).getValue().toJson());
            objUnwrap = null;
        }
        return (String) obj;
    }

    public final ImageSource coordinates(List<? extends List<Double>> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Source.setProperty$extension_style_release$default(this, new PropertyValue("coordinates", TypeUtils.INSTANCE.wrapToValue(value)), false, 2, null);
        return this;
    }

    public final List<List<Double>> getCoordinates() {
        Object objUnwrap;
        ArrayList arrayList;
        ImageSource imageSource = this;
        MapboxStyleManager delegate = imageSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get coordinates: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(imageSource.getSourceId(), "coordinates");
            if (Intrinsics.areEqual("coordinates", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
            } else if (Intrinsics.areEqual("coordinates", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                arrayList = (List) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, List.class);
                arrayList = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property coordinates failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(imageSource.getSourceId(), "coordinates").getValue().toJson());
            objUnwrap = null;
        }
        return (List) arrayList;
    }

    public static ImageSource prefetchZoomDelta$default(ImageSource imageSource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 4;
        }
        return imageSource.prefetchZoomDelta(j);
    }

    public final ImageSource prefetchZoomDelta(long value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("prefetch-zoom-delta", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))));
        return this;
    }

    public final Long getPrefetchZoomDelta() {
        Object objUnwrap;
        Object obj;
        ImageSource imageSource = this;
        MapboxStyleManager delegate = imageSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get prefetch-zoom-delta: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(imageSource.getSourceId(), "prefetch-zoom-delta");
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(imageSource.getSourceId(), "prefetch-zoom-delta").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u001a\u0010\u0010\u001a\u00020\u00002\u0012\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u0012J\u0010\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003R$\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/ImageSource$Builder;", "", "sourceId", "", "(Ljava/lang/String;)V", LightUtils.LIGHT_PROPERTIES, "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "getProperties$extension_style_release", "()Ljava/util/HashMap;", "getSourceId", "()Ljava/lang/String;", "volatileProperties", "getVolatileProperties$extension_style_release", "build", "Lcom/mapbox/maps/extension/style/sources/generated/ImageSource;", "coordinates", "value", "", "", "prefetchZoomDelta", "", ImagesContract.URL, "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
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

        public final Builder coordinates(List<? extends List<Double>> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            PropertyValue<?> propertyValue = new PropertyValue<>("coordinates", TypeUtils.INSTANCE.wrapToValue(value));
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

        public final ImageSource build() {
            return new ImageSource(this);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/generated/ImageSource$Companion;", "", "()V", "defaultPrefetchZoomDelta", "", "getDefaultPrefetchZoomDelta", "()Ljava/lang/Long;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Long getDefaultPrefetchZoomDelta() {
            Object objUnwrap;
            StylePropertyValue styleSourcePropertyDefaultValue = StyleManager.getStyleSourcePropertyDefaultValue("image", "prefetch-zoom-delta");
            Intrinsics.checkNotNullExpressionValue(styleSourcePropertyDefaultValue, "getStyleSourcePropertyDe…\", \"prefetch-zoom-delta\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleSourcePropertyDefaultValue, Long.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Long) objUnwrap;
        }
    }
}
