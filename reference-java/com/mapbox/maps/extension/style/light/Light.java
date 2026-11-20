package com.mapbox.maps.extension.style.light;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.common.ValueUtilsKt;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u0000 /2\u00020\u0001:\u0001/B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\"\u0010\u0019\u001a\u0004\u0018\u0001H\u001a\"\u0006\b\u0000\u0010\u001a\u0018\u00012\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b¢\u0006\u0004\b\u001c\u0010\u001dJ+\u0010\u001e\u001a\u0004\u0018\u0001H\u001a\"\u0004\b\u0000\u0010\u001a2\u0006\u0010\u001b\u001a\u00020\u000b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001a0 H\u0002¢\u0006\u0002\u0010!J\u0017\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u000bH\u0000¢\u0006\u0002\b%J\r\u0010&\u001a\u00020\u000bH ¢\u0006\u0002\b'J\u0019\u0010(\u001a\u00020)2\n\u0010*\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0000¢\u0006\u0002\b+J\b\u0010,\u001a\u00020\u000bH\u0016J\u0014\u0010-\u001a\u00020)2\n\u0010.\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR7\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f`\r8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0012\u0010\u0012\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R?\u0010\u0015\u001a&\u0012\u0004\u0012\u00020\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00160\nj\u0012\u0012\u0004\u0012\u00020\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0016`\r8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0017\u0010\u000f¨\u00060"}, d2 = {"Lcom/mapbox/maps/extension/style/light/Light;", "", "()V", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "getDelegate$extension_style_release", "()Lcom/mapbox/maps/MapboxStyleManager;", "setDelegate$extension_style_release", "(Lcom/mapbox/maps/MapboxStyleManager;)V", "internalLightProperties", "Ljava/util/HashMap;", "", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "getInternalLightProperties$extension_style_release", "()Ljava/util/HashMap;", "internalLightProperties$delegate", "Lkotlin/Lazy;", "lightId", "getLightId", "()Ljava/lang/String;", "lightProperties", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "getLightProperties$extension_style_release", "lightProperties$delegate", "getPropertyValue", ExifInterface.GPS_DIRECTION_TRUE, "propertyName", "getPropertyValue$extension_style_release", "(Ljava/lang/String;)Ljava/lang/Object;", "getPropertyValueWithType", "clazz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getTransitionProperty", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "transitionName", "getTransitionProperty$extension_style_release", "getType", "getType$extension_style_release", "setProperty", "", "property", "setProperty$extension_style_release", "toString", "updateProperty", "propertyValue", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class Light {
    private static final String TAG = "Mbgl-Light";
    private MapboxStyleManager delegate;

    private final Lazy lightProperties = LazyKt.lazy(new Function0<HashMap<String, PropertyValue<?>>>() {
        @Override
        public final HashMap<String, PropertyValue<?>> invoke() {
            return new HashMap<>();
        }
    });

    private final Lazy internalLightProperties = LazyKt.lazy(new Function0<HashMap<String, Value>>() {
        {
            super(0);
        }

        @Override
        public final HashMap<String, Value> invoke() {
            HashMap<String, Value> map = new HashMap<>();
            Light light = this.this$0;
            HashMap<String, Value> map2 = map;
            map2.put("id", ValueUtilsKt.toValue(light.getLightId()));
            map2.put(SVGParser.XML_STYLESHEET_ATTR_TYPE, ValueUtilsKt.toValue(light.getType$extension_style_release()));
            return map;
        }
    });

    public abstract String getLightId();

    public abstract String getType$extension_style_release();

    public final MapboxStyleManager getDelegate() {
        return this.delegate;
    }

    public final void setDelegate$extension_style_release(MapboxStyleManager mapboxStyleManager) {
        this.delegate = mapboxStyleManager;
    }

    public final HashMap<String, PropertyValue<?>> getLightProperties$extension_style_release() {
        return (HashMap) this.lightProperties.getValue();
    }

    public final HashMap<String, Value> getInternalLightProperties$extension_style_release() {
        return (HashMap) this.internalLightProperties.getValue();
    }

    private final void updateProperty(PropertyValue<?> propertyValue) {
        String error;
        MapboxStyleManager mapboxStyleManager = this.delegate;
        Expected<String, None> styleLightProperty = mapboxStyleManager != null ? mapboxStyleManager.setStyleLightProperty(getLightId(), propertyValue.getPropertyName(), propertyValue.getValue()) : null;
        if (styleLightProperty != null && (error = styleLightProperty.getError()) != null) {
            throw new MapboxStyleException("Set light property failed: " + error);
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
                return (T) TypeUtilsKt.unwrap(mapboxStyleManager.getStyleLightProperty(getLightId(), propertyName), clazz);
            } catch (RuntimeException e) {
                MapboxLogger.logE(TAG, "Get light property " + propertyName + " failed: " + e.getMessage());
                String string = mapboxStyleManager.getStyleLightProperty(getLightId(), propertyName).toString();
                Intrinsics.checkNotNullExpressionValue(string, "it.getStyleLightProperty… propertyName).toString()");
                MapboxLogger.logE(TAG, string);
                return null;
            }
        }
        throw new MapboxStyleException("Get property " + propertyName + " failed: light is not added to style yet.");
    }

    public final void setProperty$extension_style_release(PropertyValue<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        getLightProperties$extension_style_release().put(property.getPropertyName(), property);
        updateProperty(property);
    }

    public final StyleTransition getTransitionProperty$extension_style_release(String transitionName) {
        Intrinsics.checkNotNullParameter(transitionName, "transitionName");
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                Object contents = mapboxStyleManager.getStyleLightProperty(getLightId(), transitionName).getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                HashMap map = (HashMap) contents;
                Value value = (Value) map.get(TypedValues.TransitionType.S_DURATION);
                Object contents2 = value != null ? value.getContents() : null;
                Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.Long");
                long jLongValue = ((Long) contents2).longValue();
                Value value2 = (Value) map.get(BackgroundFetchConfig.FIELD_DELAY);
                Object contents3 = value2 != null ? value2.getContents() : null;
                Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.Long");
                return new StyleTransition.Builder().delay(((Long) contents3).longValue()).duration(jLongValue).build();
            } catch (RuntimeException e) {
                MapboxLogger.logE(TAG, "Get light property failed: " + e.getMessage());
                String string = mapboxStyleManager.getStyleLightProperty(getLightId(), transitionName).toString();
                Intrinsics.checkNotNullExpressionValue(string, "it.getStyleLightProperty…ransitionName).toString()");
                MapboxLogger.logE(TAG, string);
                return null;
            }
        }
        throw new MapboxStyleException("Get property " + transitionName + " failed: light is not added to style yet.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        HashMap<String, Value> internalLightProperties$extension_style_release = getInternalLightProperties$extension_style_release();
        ArrayList arrayList = new ArrayList(internalLightProperties$extension_style_release.size());
        for (Map.Entry<String, Value> entry : internalLightProperties$extension_style_release.entrySet()) {
            arrayList.add(entry.getKey() + " = " + entry.getValue());
        }
        StringBuilder sbAppend = sb.append(CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null)).append(", ");
        Collection<PropertyValue<?>> collectionValues = getLightProperties$extension_style_release().values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "lightProperties.values");
        return sbAppend.append(CollectionsKt.joinToString$default(collectionValues, null, null, null, 0, null, new Function1<PropertyValue<?>, CharSequence>() {
            @Override
            public final CharSequence invoke(PropertyValue<?> propertyValue) {
                Intrinsics.checkNotNullParameter(propertyValue, "propertyValue");
                return propertyValue.getPropertyName() + " = " + propertyValue.getValue();
            }
        }, 31, null)).append("}]").toString();
    }
}
