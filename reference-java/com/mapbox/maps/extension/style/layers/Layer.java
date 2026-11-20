package com.mapbox.maps.extension.style.layers;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000 N2\u00020\u0001:\u0001NB\u0005¢\u0006\u0002\u0010\u0002J.\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u000201002\u0006\u0010\t\u001a\u00020\n2\u0006\u00102\u001a\u00020\u00042\b\u00103\u001a\u0004\u0018\u000104H\u0014J&\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u000201002\u0006\u0010\t\u001a\u00020\n2\b\u00103\u001a\u0004\u0018\u000104H\u0014J!\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\n2\n\b\u0002\u00103\u001a\u0004\u0018\u000104H\u0000¢\u0006\u0002\b9J\u000e\u0010:\u001a\u0002072\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010:\u001a\u0002072\u0006\u0010\t\u001a\u00020\n2\b\u00103\u001a\u0004\u0018\u000104H\u0016J\b\u0010;\u001a\u00020\u0004H\u0004J\"\u0010<\u001a\u0004\u0018\u0001H=\"\u0006\b\u0000\u0010=\u0018\u00012\u0006\u0010>\u001a\u00020\u0010H\u0080\b¢\u0006\u0004\b?\u0010@J\u0017\u0010A\u001a\u0004\u0018\u00010,2\u0006\u0010>\u001a\u00020\u0010H\u0000¢\u0006\u0002\bBJ+\u0010C\u001a\u0004\u0018\u0001H=\"\u0004\b\u0000\u0010=2\u0006\u0010>\u001a\u00020\u00102\f\u0010D\u001a\b\u0012\u0004\u0012\u0002H=0EH\u0002¢\u0006\u0002\u0010FJ\r\u0010G\u001a\u00020\u0010H ¢\u0006\u0002\bHJ\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020 H&J\u0019\u0010I\u001a\u0002072\n\u0010J\u001a\u0006\u0012\u0002\b\u00030\u0019H\u0000¢\u0006\u0002\bKJ\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0010H&J\b\u0010L\u001a\u00020\u0010H\u0016J\u0014\u0010M\u001a\u0002072\n\u0010J\u001a\u0006\u0012\u0002\b\u00030\u0019H\u0002J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020,H&J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0012\u0010\u0015\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0012R?\u0010\u0017\u001a&\u0012\u0004\u0012\u00020\u0010\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00190\u0018j\u0012\u0012\u0004\u0012\u00020\u0010\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0019`\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001f\u001a\u0004\u0018\u00010 X¦\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\u0004\u0018\u00010 X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\"R\u0014\u0010%\u001a\u0004\u0018\u00010\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u0012R\u0014\u0010'\u001a\u0004\u0018\u00010(X¦\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0014\u0010+\u001a\u0004\u0018\u00010,X¦\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u0006O"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/Layer;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLayerExtension;", "()V", "appliedLayerPropertiesValue", "Lcom/mapbox/bindgen/Value;", "getAppliedLayerPropertiesValue$extension_style_release", "()Lcom/mapbox/bindgen/Value;", "setAppliedLayerPropertiesValue$extension_style_release", "(Lcom/mapbox/bindgen/Value;)V", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "getDelegate$extension_style_release", "()Lcom/mapbox/maps/MapboxStyleManager;", "setDelegate$extension_style_release", "(Lcom/mapbox/maps/MapboxStyleManager;)V", "internalSourceId", "", "getInternalSourceId$extension_style_release", "()Ljava/lang/String;", "setInternalSourceId$extension_style_release", "(Ljava/lang/String;)V", "layerId", "getLayerId", "layerProperties", "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "Lkotlin/collections/HashMap;", "getLayerProperties", "()Ljava/util/HashMap;", "layerProperties$delegate", "Lkotlin/Lazy;", "maxZoom", "", "getMaxZoom", "()Ljava/lang/Double;", "minZoom", "getMinZoom", "slot", "getSlot", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getVisibilityAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "addLayer", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/None;", "propertiesValue", "position", "Lcom/mapbox/maps/LayerPosition;", "addPersistentLayer", "bindPersistentlyTo", "", "style", "bindPersistentlyTo$extension_style_release", "bindTo", "getCachedLayerProperties", "getPropertyValue", ExifInterface.GPS_DIRECTION_TRUE, "propertyName", "getPropertyValue$extension_style_release", "(Ljava/lang/String;)Ljava/lang/Object;", "getPropertyValueAsExpressionOrLiteralExpression", "getPropertyValueAsExpressionOrLiteralExpression$extension_style_release", "getPropertyValueWithType", "clazz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getType", "getType$extension_style_release", "setProperty", "property", "setProperty$extension_style_release", "toString", "updateProperty", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class Layer implements StyleContract.StyleLayerExtension {
    private static final String TAG = "Mbgl-Layer";
    private Value appliedLayerPropertiesValue;
    private MapboxStyleManager delegate;
    private String internalSourceId;

    private final Lazy layerProperties = LazyKt.lazy(new Function0<HashMap<String, PropertyValue<?>>>() {
        {
            super(0);
        }

        @Override
        public final HashMap<String, PropertyValue<?>> invoke() {
            HashMap<String, PropertyValue<?>> map = new HashMap<>();
            Layer layer = this.this$0;
            HashMap<String, PropertyValue<?>> map2 = map;
            map2.put("id", new PropertyValue<>("id", layer.getLayerId()));
            map2.put(SVGParser.XML_STYLESHEET_ATTR_TYPE, new PropertyValue<>(SVGParser.XML_STYLESHEET_ATTR_TYPE, layer.getType$extension_style_release()));
            String internalSourceId = layer.getInternalSourceId();
            if (internalSourceId != null) {
                map2.put("source", new PropertyValue<>("source", internalSourceId));
            }
            return map;
        }
    });

    public abstract String getLayerId();

    public abstract Double getMaxZoom();

    public abstract Double getMinZoom();

    public abstract String getSlot();

    public abstract String getType$extension_style_release();

    public abstract Visibility getVisibility();

    public abstract Expression getVisibilityAsExpression();

    public abstract Layer maxZoom(double maxZoom);

    public abstract Layer minZoom(double minZoom);

    public abstract Layer slot(String slot);

    public abstract Layer visibility(Expression visibility);

    public abstract Layer visibility(Visibility visibility);

    public final String getInternalSourceId() {
        return this.internalSourceId;
    }

    public final void setInternalSourceId$extension_style_release(String str) {
        this.internalSourceId = str;
    }

    public final MapboxStyleManager getDelegate() {
        return this.delegate;
    }

    public final void setDelegate$extension_style_release(MapboxStyleManager mapboxStyleManager) {
        this.delegate = mapboxStyleManager;
    }

    public final Value getAppliedLayerPropertiesValue() {
        return this.appliedLayerPropertiesValue;
    }

    public final void setAppliedLayerPropertiesValue$extension_style_release(Value value) {
        this.appliedLayerPropertiesValue = value;
    }

    private final HashMap<String, PropertyValue<?>> getLayerProperties() {
        return (HashMap) this.layerProperties.getValue();
    }

    protected Expected<String, None> addPersistentLayer(MapboxStyleManager delegate, LayerPosition position) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        return delegate.addPersistentStyleLayer(getCachedLayerProperties(), position);
    }

    protected Expected<String, None> addLayer(MapboxStyleManager delegate, Value propertiesValue, LayerPosition position) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(propertiesValue, "propertiesValue");
        return delegate.addStyleLayer(propertiesValue, position);
    }

    public final void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        bindTo(delegate, null);
    }

    @Override
    public void bindTo(MapboxStyleManager delegate, LayerPosition position) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        Value cachedLayerProperties = this.appliedLayerPropertiesValue;
        if (cachedLayerProperties == null) {
            cachedLayerProperties = getCachedLayerProperties();
        }
        String error = addLayer(delegate, cachedLayerProperties, position).getError();
        if (error != null) {
            throw new MapboxStyleException("Add layer failed: " + error);
        }
        if (this.appliedLayerPropertiesValue != null) {
            Collection<PropertyValue<?>> collectionValues = getLayerProperties().values();
            Intrinsics.checkNotNullExpressionValue(collectionValues, "layerProperties.values");
            ArrayList<PropertyValue> arrayList = new ArrayList();
            for (Object obj : collectionValues) {
                PropertyValue propertyValue = (PropertyValue) obj;
                if (!Intrinsics.areEqual(propertyValue.getPropertyName(), "id") && !Intrinsics.areEqual(propertyValue.getPropertyName(), SVGParser.XML_STYLESHEET_ATTR_TYPE) && !Intrinsics.areEqual(propertyValue.getPropertyName(), "source")) {
                    arrayList.add(obj);
                }
            }
            for (PropertyValue propertyValue2 : arrayList) {
                delegate.setStyleLayerProperty(getLayerId(), propertyValue2.getPropertyName(), propertyValue2.getValue());
            }
        }
    }

    public static void bindPersistentlyTo$extension_style_release$default(Layer layer, MapboxStyleManager mapboxStyleManager, LayerPosition layerPosition, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bindPersistentlyTo");
        }
        if ((i & 2) != 0) {
            layerPosition = null;
        }
        layer.bindPersistentlyTo$extension_style_release(mapboxStyleManager, layerPosition);
    }

    public final void bindPersistentlyTo$extension_style_release(MapboxStyleManager style, LayerPosition position) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.delegate = style;
        String error = addPersistentLayer(style, position).getError();
        if (error != null) {
            throw new MapboxStyleException("Add persistent layer failed: " + error);
        }
    }

    protected final Value getCachedLayerProperties() {
        HashMap map = new HashMap();
        Collection<PropertyValue<?>> collectionValues = getLayerProperties().values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "layerProperties.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            PropertyValue propertyValue = (PropertyValue) it.next();
            map.put(propertyValue.getPropertyName(), propertyValue.getValue());
        }
        return new Value((HashMap<String, Value>) map);
    }

    public final void setProperty$extension_style_release(PropertyValue<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        getLayerProperties().put(property.getPropertyName(), property);
        updateProperty(property);
    }

    private final void updateProperty(PropertyValue<?> property) {
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            String error = mapboxStyleManager.setStyleLayerProperty(getLayerId(), property.getPropertyName(), property.getValue()).getError();
            if (error == null) {
                return;
            }
            throw new MapboxStyleException("Set layer property \"" + property.getPropertyName() + "\" failed:\n" + error + '\n' + property.getValue());
        }
    }

    public final <T> T getPropertyValue$extension_style_release(String propertyName) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) getPropertyValueWithType(propertyName, Object.class);
    }

    public final <T> T getPropertyValueWithType(String propertyName, Class<T> clazz) {
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                return (T) TypeUtilsKt.unwrap(mapboxStyleManager.getStyleLayerProperty(getLayerId(), propertyName), clazz);
            } catch (RuntimeException e) {
                if (Intrinsics.areEqual(clazz, Expression.class)) {
                    return null;
                }
                Log.e(TAG, "Get layer property=" + propertyName + " for layerId=" + getLayerId() + " failed: " + e.getMessage() + ". Value obtained: " + mapboxStyleManager.getStyleLayerProperty(getLayerId(), propertyName));
                return null;
            }
        }
        throw new MapboxStyleException("Couldn't get " + propertyName + ": layer is not added to style yet.");
    }

    public final Expression getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(String propertyName) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                return TypeUtilsKt.unwrapToExpressionOrLiteralExpression(mapboxStyleManager.getStyleLayerProperty(getLayerId(), propertyName));
            } catch (RuntimeException e) {
                Log.e(TAG, "Get layer property=" + propertyName + " for layerId=" + getLayerId() + " failed: " + e.getMessage() + ". Value obtained: " + mapboxStyleManager.getStyleLayerProperty(getLayerId(), propertyName));
                return null;
            }
        }
        throw new MapboxStyleException("Couldn't get " + propertyName + ": layer is not added to style yet.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        Collection<PropertyValue<?>> collectionValues = getLayerProperties().values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "layerProperties.values");
        return sb.append(CollectionsKt.joinToString$default(collectionValues, null, null, null, 0, null, new Function1<PropertyValue<?>, CharSequence>() {
            @Override
            public final CharSequence invoke(PropertyValue<?> propertyValue) {
                Intrinsics.checkNotNullParameter(propertyValue, "propertyValue");
                return propertyValue.getPropertyName() + " = " + propertyValue.getValue();
            }
        }, 31, null)).append("}]").toString();
    }
}
