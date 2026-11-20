package com.mapbox.maps.extension.style.sources;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.sources.generated.RasterArraySource;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\b&\u0018\u0000 02\u00020\u0001:\u00010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u0006H\u0014J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\"\u0010 \u001a\u0004\u0018\u0001H!\"\u0006\b\u0000\u0010!\u0018\u00012\u0006\u0010\"\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\u0003H ¢\u0006\u0002\b&J#\u0010'\u001a\u00020\u001d2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030\u000f2\b\b\u0002\u0010)\u001a\u00020*H\u0000¢\u0006\u0002\b+J\u0019\u0010,\u001a\u00020\u001d2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0000¢\u0006\u0002\b-J\b\u0010.\u001a\u00020\u0003H\u0016J\u001e\u0010/\u001a\u00020\u001d2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030\u000f2\b\b\u0002\u0010)\u001a\u00020*H\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR?\u0010\r\u001a&\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f0\u000ej\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f`\u00108@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R?\u0010\u0015\u001a&\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f0\u000ej\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f`\u00108@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0012¨\u00061"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/Source;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleSourceExtension;", "sourceId", "", "(Ljava/lang/String;)V", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "getDelegate$extension_style_release", "()Lcom/mapbox/maps/MapboxStyleManager;", "setDelegate$extension_style_release", "(Lcom/mapbox/maps/MapboxStyleManager;)V", "getSourceId", "()Ljava/lang/String;", "sourceProperties", "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "Lkotlin/collections/HashMap;", "getSourceProperties$extension_style_release", "()Ljava/util/HashMap;", "sourceProperties$delegate", "Lkotlin/Lazy;", "volatileSourceProperties", "getVolatileSourceProperties$extension_style_release", "volatileSourceProperties$delegate", "addSource", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/None;", "style", "bindTo", "", "getCachedSourceProperties", "Lcom/mapbox/bindgen/Value;", "getPropertyValue", ExifInterface.GPS_DIRECTION_TRUE, "propertyName", "getPropertyValue$extension_style_release", "(Ljava/lang/String;)Ljava/lang/Object;", "getType", "getType$extension_style_release", "setProperty", "property", "throwRuntimeException", "", "setProperty$extension_style_release", "setVolatileProperty", "setVolatileProperty$extension_style_release", "toString", "updateProperty", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class Source implements StyleContract.StyleSourceExtension {
    private static final String TAG = "Mbgl-Source";
    private MapboxStyleManager delegate;
    private final String sourceId;

    private final Lazy sourceProperties;

    private final Lazy volatileSourceProperties;

    public abstract String getType$extension_style_release();

    public Source(String sourceId) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        this.sourceId = sourceId;
        this.sourceProperties = LazyKt.lazy(new Function0<HashMap<String, PropertyValue<?>>>() {
            {
                super(0);
            }

            @Override
            public final HashMap<String, PropertyValue<?>> invoke() {
                HashMap<String, PropertyValue<?>> map = new HashMap<>();
                map.put(SVGParser.XML_STYLESHEET_ATTR_TYPE, new PropertyValue<>(SVGParser.XML_STYLESHEET_ATTR_TYPE, this.this$0.getType$extension_style_release()));
                return map;
            }
        });
        this.volatileSourceProperties = LazyKt.lazy(new Function0<HashMap<String, PropertyValue<?>>>() {
            @Override
            public final HashMap<String, PropertyValue<?>> invoke() {
                return new HashMap<>();
            }
        });
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final HashMap<String, PropertyValue<?>> getSourceProperties$extension_style_release() {
        return (HashMap) this.sourceProperties.getValue();
    }

    public final HashMap<String, PropertyValue<?>> getVolatileSourceProperties$extension_style_release() {
        return (HashMap) this.volatileSourceProperties.getValue();
    }

    public final MapboxStyleManager getDelegate() {
        return this.delegate;
    }

    public final void setDelegate$extension_style_release(MapboxStyleManager mapboxStyleManager) {
        this.delegate = mapboxStyleManager;
    }

    protected Expected<String, None> addSource(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        return style.addStyleSource(this.sourceId, getCachedSourceProperties());
    }

    @Override
    public void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        String error = addSource(delegate).getError();
        if (error != null) {
            Log.e(TAG, getCachedSourceProperties().toString());
            throw new MapboxStyleException("Add source failed: " + error);
        }
        Iterator<Map.Entry<String, PropertyValue<?>>> it = getVolatileSourceProperties$extension_style_release().entrySet().iterator();
        while (it.hasNext()) {
            updateProperty$default(this, it.next().getValue(), false, 2, null);
        }
    }

    private final Value getCachedSourceProperties() {
        HashMap map = new HashMap();
        Collection<PropertyValue<?>> collectionValues = getSourceProperties$extension_style_release().values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "sourceProperties.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            PropertyValue propertyValue = (PropertyValue) it.next();
            map.put(propertyValue.getPropertyName(), propertyValue.getValue());
        }
        return new Value((HashMap<String, Value>) map);
    }

    public static void setProperty$extension_style_release$default(Source source, PropertyValue propertyValue, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setProperty");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        source.setProperty$extension_style_release(propertyValue, z);
    }

    public final void setProperty$extension_style_release(PropertyValue<?> property, boolean throwRuntimeException) {
        Intrinsics.checkNotNullParameter(property, "property");
        getSourceProperties$extension_style_release().put(property.getPropertyName(), property);
        updateProperty(property, throwRuntimeException);
    }

    public final void setVolatileProperty$extension_style_release(PropertyValue<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        getVolatileSourceProperties$extension_style_release().put(property.getPropertyName(), property);
        updateProperty$default(this, property, false, 2, null);
    }

    static void updateProperty$default(Source source, PropertyValue propertyValue, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateProperty");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        source.updateProperty(propertyValue, z);
    }

    private final void updateProperty(PropertyValue<?> property, boolean throwRuntimeException) {
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                String error = mapboxStyleManager.setStyleSourceProperty(this.sourceId, property.getPropertyName(), property.getValue()).getError();
                if (error != null) {
                    String str = "Set source property \"" + property.getPropertyName() + "\" failed:\nError: " + error + "\nValue set: " + property.getValue();
                    if (throwRuntimeException) {
                        throw new MapboxStyleException(str);
                    }
                    MapboxLogger.logE(TAG, str);
                    Unit unit = Unit.INSTANCE;
                }
            } catch (IllegalStateException e) {
                if (throwRuntimeException) {
                    throw e;
                }
                String message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                MapboxLogger.logE(TAG, message);
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    public final <T> T getPropertyValue$extension_style_release(String propertyName) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        MapboxStyleManager delegate = getDelegate();
        if (delegate != null) {
            try {
                StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(getSourceId(), propertyName);
                if (Intrinsics.areEqual(propertyName, "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
                        Iterator<T> it = list.iterator();
                        while (it.hasNext()) {
                            Object contents3 = ((Value) it.next()).getContents();
                            Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                            arrayList2.add((String) contents3);
                        }
                        arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                    }
                    Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
                    return (T) arrayList;
                }
                if (Intrinsics.areEqual(propertyName, "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                    Value value = styleSourceProperty.getValue();
                    Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                    Object objUnwrapToTileCacheBudget = SourceUtils.unwrapToTileCacheBudget(value);
                    Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
                    return (T) objUnwrapToTileCacheBudget;
                }
                Intrinsics.reifiedOperationMarker(4, "T?");
                return (T) TypeUtilsKt.unwrap(styleSourceProperty, Object.class);
            } catch (RuntimeException e) {
                Log.e(TAG, "Get source property " + propertyName + " failed: " + e.getMessage());
                Log.e(TAG, "Value returned: " + delegate.getStyleSourceProperty(getSourceId(), propertyName).getValue().toJson());
                return null;
            }
        }
        throw new MapboxStyleException("Couldn't get " + propertyName + ": source is not added to style yet.");
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder("[sourceId = ").append(this.sourceId).append(", ");
        Collection<PropertyValue<?>> collectionValues = getSourceProperties$extension_style_release().values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "sourceProperties.values");
        return sbAppend.append(CollectionsKt.joinToString$default(collectionValues, null, null, null, 0, null, new Function1<PropertyValue<?>, CharSequence>() {
            @Override
            public final CharSequence invoke(PropertyValue<?> propertyValue) {
                Intrinsics.checkNotNullParameter(propertyValue, "propertyValue");
                return propertyValue.getPropertyName() + " = " + propertyValue.getValue();
            }
        }, 31, null)).append("}]").toString();
    }
}
