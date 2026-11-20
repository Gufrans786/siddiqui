package com.mapbox.maps.extension.style.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.TransitionOptions;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a%\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u001a\u001c\u0010\u0007\u001a\u0004\u0018\u0001H\b\"\u0006\b\u0000\u0010\b\u0018\u0001*\u00020\tH\u0086\b¢\u0006\u0002\u0010\n\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\r\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\u000e\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\u000f\u001a\u001a\u0010\u0010\u001a\u0002H\b\"\u0006\b\u0000\u0010\b\u0018\u0001*\u00020\tH\u0086\b¢\u0006\u0002\u0010\n\u001a#\u0010\u0010\u001a\u0002H\b\"\u0004\b\u0000\u0010\b*\u00020\t2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\b0\u0012¢\u0006\u0002\u0010\u0013\u001a\f\u0010\u0014\u001a\u00020\u0015*\u00020\u0015H\u0000\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\f\u001a\n\u0010\u0018\u001a\u00020\u0015*\u00020\f\u001a\f\u0010\u0019\u001a\u00020\u0015*\u00020\tH\u0000\u001a\f\u0010\u001a\u001a\u00020\u0015*\u00020\fH\u0002\u001a\n\u0010\u001b\u001a\u00020\u001c*\u00020\f\u001a\u001a\u0010\u001d\u001a\u0002H\b\"\u0006\b\u0000\u0010\b\u0018\u0001*\u00020\fH\u0086\b¢\u0006\u0002\u0010\u001e\u001a#\u0010\u001d\u001a\u0002H\b\"\u0004\b\u0000\u0010\b*\u00020\f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\b0\u0012¢\u0006\u0002\u0010\u001f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"transition", "Lcom/mapbox/maps/TransitionOptions;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/TransitionOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "silentUnwrap", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/StylePropertyValue;", "(Lcom/mapbox/maps/StylePropertyValue;)Ljava/lang/Object;", "toValue", "Lcom/mapbox/bindgen/Value;", "Lcom/mapbox/geojson/Feature;", "Lcom/mapbox/geojson/FeatureCollection;", "Lcom/mapbox/geojson/Geometry;", "unwrap", "clazz", "Ljava/lang/Class;", "(Lcom/mapbox/maps/StylePropertyValue;Ljava/lang/Class;)Ljava/lang/Object;", "unwrapFromLiteralArray", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "unwrapToAny", "", "unwrapToExpression", "unwrapToExpressionOrLiteralExpression", "unwrapToLiteralExpression", "unwrapToStyleTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "unwrapToTyped", "(Lcom/mapbox/bindgen/Value;)Ljava/lang/Object;", "(Lcom/mapbox/bindgen/Value;Ljava/lang/Class;)Ljava/lang/Object;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class TypeUtilsKt {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StylePropertyValueKind.values().length];
            try {
                iArr[StylePropertyValueKind.CONSTANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StylePropertyValueKind.TRANSITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StylePropertyValueKind.EXPRESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StylePropertyValueKind.UNDEFINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Object unwrapToAny(Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Object contents = value.getContents();
        if ((contents instanceof Double) || (contents instanceof Long) || (contents instanceof Boolean) || (contents instanceof String) || (contents instanceof double[]) || (contents instanceof long[]) || (contents instanceof boolean[])) {
            return contents;
        }
        if (contents instanceof List) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) contents).iterator();
            while (it.hasNext()) {
                arrayList.add(unwrapToAny((Value) it.next()));
            }
            return arrayList;
        }
        if (contents instanceof HashMap) {
            HashMap map = (HashMap) contents;
            HashMap map2 = new HashMap();
            Set<String> setKeySet = map.keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet, "valueMap.keys");
            for (String key : setKeySet) {
                Value value2 = (Value) map.get(key);
                if (value2 != null) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    Intrinsics.checkNotNullExpressionValue(value2, "value");
                    map2.put(key, unwrapToAny(value2));
                }
            }
            return map2;
        }
        StringBuilder sb = new StringBuilder("unable to unwrap Value of content type: ");
        Object contents2 = value.getContents();
        throw new UnsupportedOperationException(sb.append(contents2 != null ? contents2.getClass().getSimpleName() : null).toString());
    }

    private static final Expression unwrapToLiteralExpression(Value value) {
        Object contents = value.getContents();
        if (contents instanceof Double) {
            return Expression.INSTANCE.literal(((Number) contents).doubleValue());
        }
        if (contents instanceof Long) {
            return Expression.INSTANCE.literal(((Number) contents).longValue());
        }
        if (contents instanceof Boolean) {
            return Expression.INSTANCE.literal(((Boolean) contents).booleanValue());
        }
        if (contents instanceof String) {
            return Expression.INSTANCE.literal((String) contents);
        }
        if (contents instanceof double[]) {
            return Expression.INSTANCE.literal$extension_style_release(ArraysKt.asList((double[]) contents));
        }
        if (contents instanceof long[]) {
            return Expression.INSTANCE.literal$extension_style_release(ArraysKt.asList((long[]) contents));
        }
        if (contents instanceof boolean[]) {
            return Expression.INSTANCE.literal$extension_style_release(ArraysKt.asList((boolean[]) contents));
        }
        if (contents instanceof List) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) contents).iterator();
            while (it.hasNext()) {
                arrayList.add(unwrapToAny((Value) it.next()));
            }
            return Expression.INSTANCE.literal$extension_style_release(arrayList);
        }
        if (contents instanceof HashMap) {
            HashMap map = (HashMap) contents;
            HashMap<String, Object> map2 = new HashMap<>();
            Set<String> setKeySet = map.keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet, "valueMap.keys");
            for (String key : setKeySet) {
                Value value2 = (Value) map.get(key);
                if (value2 != null) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    Intrinsics.checkNotNullExpressionValue(value2, "value");
                    map2.put(key, unwrapToAny(value2));
                }
            }
            return Expression.INSTANCE.literal$extension_style_release(map2);
        }
        StringBuilder sb = new StringBuilder("unable to unwrap Value of content type: ");
        Object contents2 = value.getContents();
        throw new UnsupportedOperationException(sb.append(contents2 != null ? contents2.getClass().getSimpleName() : null).toString());
    }

    public static final <T> T unwrapToTyped(Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) unwrapToTyped(value, Object.class);
    }

    public static final <T> T unwrapToTyped(Value value, Class<T> clazz) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        T t = (T) unwrapToAny(value);
        if (clazz.isInstance(t)) {
            return t;
        }
        throw new UnsupportedOperationException("Requested type " + clazz.getSimpleName() + " doesn't match " + t.getClass().getSimpleName());
    }

    public static final StyleTransition unwrapToStyleTransition(Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Object contents = value.getContents();
        if (contents instanceof HashMap) {
            StyleTransition.Builder builder = new StyleTransition.Builder();
            HashMap map = (HashMap) contents;
            Value value2 = (Value) map.get(BackgroundFetchConfig.FIELD_DELAY);
            if (value2 != null) {
                Object contents2 = value2.getContents();
                Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.Long");
                builder.delay(((Long) contents2).longValue());
            }
            Value value3 = (Value) map.get(TypedValues.TransitionType.S_DURATION);
            if (value3 != null) {
                Object contents3 = value3.getContents();
                Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.Long");
                builder.duration(((Long) contents3).longValue());
            }
            return builder.build();
        }
        if (contents instanceof List) {
            List list = (List) contents;
            StyleTransition.Builder builder2 = new StyleTransition.Builder();
            Object contents4 = ((Value) list.get(0)).getContents();
            Intrinsics.checkNotNull(contents4, "null cannot be cast to non-null type kotlin.Long");
            builder2.duration(((Long) contents4).longValue());
            Object contents5 = ((Value) list.get(1)).getContents();
            Intrinsics.checkNotNull(contents5, "null cannot be cast to non-null type kotlin.Long");
            builder2.delay(((Long) contents5).longValue());
            return builder2.build();
        }
        throw new UnsupportedOperationException("unable to unwrap to StyleTransition: " + value);
    }

    public static final Expression unwrapFromLiteralArray(Expression expression) {
        Intrinsics.checkNotNullParameter(expression, "<this>");
        if (!(expression.getContents() instanceof List)) {
            return expression;
        }
        Object contents = expression.getContents();
        Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
        List list = (List) contents;
        Object contents2 = ((Value) CollectionsKt.first(list)).getContents();
        if (!Intrinsics.areEqual("literal", contents2 instanceof String ? (String) contents2 : null)) {
            return expression;
        }
        Object contents3 = ((Value) CollectionsKt.last(list)).getContents();
        return contents3 instanceof List ? new Expression((List<? extends Object>) contents3) : expression;
    }

    public static final Expression unwrapToExpression(Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Object contents = value.getContents();
        if (contents instanceof Double) {
            return Expression.INSTANCE.literal(((Number) contents).doubleValue());
        }
        if (contents instanceof Long) {
            return Expression.INSTANCE.literal(((Number) contents).longValue());
        }
        if (contents instanceof Boolean) {
            return Expression.INSTANCE.literal(((Boolean) contents).booleanValue());
        }
        if (contents instanceof String) {
            return Expression.INSTANCE.literal((String) contents);
        }
        if (contents instanceof List) {
            List list = (List) contents;
            Object contents2 = ((Value) CollectionsKt.first(list)).getContents();
            String str = contents2 instanceof String ? (String) contents2 : null;
            if (str == null) {
                return new Expression((List<? extends Object>) list);
            }
            if (Intrinsics.areEqual("literal", str)) {
                Object contents3 = ((Value) CollectionsKt.last(list)).getContents();
                if (contents3 instanceof List) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = ((List) contents3).iterator();
                    while (it.hasNext()) {
                        arrayList.add(unwrapToExpression((Value) it.next()));
                    }
                    return new Expression.ExpressionBuilder("literal").addArgument(new Expression(arrayList)).build();
                }
                if (contents3 instanceof HashMap) {
                    HashMap<String, Object> map = new HashMap<>();
                    for (Map.Entry entry : ((HashMap) contents3).entrySet()) {
                        map.put((String) entry.getKey(), unwrapToExpression((Value) entry.getValue()));
                    }
                    return Expression.INSTANCE.literal$extension_style_release(map);
                }
            } else if (Intrinsics.areEqual("image", str)) {
                Expression.ImageBuilder imageBuilder = new Expression.ImageBuilder();
                Iterator it2 = CollectionsKt.drop(list, 1).iterator();
                while (it2.hasNext()) {
                    imageBuilder.addArgument(unwrapToExpression((Value) it2.next()));
                }
                return imageBuilder.build();
            }
            List listDrop = CollectionsKt.drop(list, 1);
            Expression.ExpressionBuilder expressionBuilder = new Expression.ExpressionBuilder(str);
            Iterator it3 = listDrop.iterator();
            while (it3.hasNext()) {
                expressionBuilder.addArgument(unwrapToExpression((Value) it3.next()));
            }
            return expressionBuilder.build();
        }
        if (contents instanceof HashMap) {
            return new Expression((HashMap<String, Value>) contents);
        }
        throw new UnsupportedOperationException("unable to unwrap to Expression: " + value);
    }

    public static final <T> T unwrap(StylePropertyValue stylePropertyValue) {
        Intrinsics.checkNotNullParameter(stylePropertyValue, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) unwrap(stylePropertyValue, Object.class);
    }

    public static final <T> T unwrap(StylePropertyValue stylePropertyValue, Class<T> clazz) {
        Intrinsics.checkNotNullParameter(stylePropertyValue, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        int i = WhenMappings.$EnumSwitchMapping$0[stylePropertyValue.getKind().ordinal()];
        if (i == 1) {
            Value value = stylePropertyValue.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "this.value");
            return (T) unwrapToTyped(value, clazz);
        }
        if (i == 2) {
            Value value2 = stylePropertyValue.getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "this.value");
            Object objUnwrapToStyleTransition = unwrapToStyleTransition(value2);
            if (clazz.isInstance(objUnwrapToStyleTransition)) {
                return (T) objUnwrapToStyleTransition;
            }
            throw new IllegalArgumentException("Requested type " + clazz.getSimpleName() + " doesn't match " + objUnwrapToStyleTransition.getClass().getSimpleName());
        }
        if (i != 3) {
            if (i == 4) {
                throw new IllegalArgumentException("Property is undefined");
            }
            throw new UnsupportedOperationException("parsing " + stylePropertyValue.getKind() + " is not supported yet");
        }
        Value value3 = stylePropertyValue.getValue();
        Intrinsics.checkNotNullExpressionValue(value3, "this.value");
        Object objUnwrapToExpression = unwrapToExpression(value3);
        if (clazz.isInstance(objUnwrapToExpression)) {
            return (T) objUnwrapToExpression;
        }
        throw new IllegalArgumentException("Requested type " + clazz.getSimpleName() + " doesn't match " + objUnwrapToExpression.getClass().getSimpleName());
    }

    public static final Expression unwrapToExpressionOrLiteralExpression(StylePropertyValue stylePropertyValue) {
        Intrinsics.checkNotNullParameter(stylePropertyValue, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[stylePropertyValue.getKind().ordinal()];
        if (i == 1) {
            Value value = stylePropertyValue.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "this.value");
            return unwrapToLiteralExpression(value);
        }
        if (i == 3) {
            Value value2 = stylePropertyValue.getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "this.value");
            return unwrapToExpression(value2);
        }
        throw new UnsupportedOperationException("parsing [" + stylePropertyValue.getKind() + "] as an expression is not supported");
    }

    public static final <T> T silentUnwrap(StylePropertyValue stylePropertyValue) {
        Intrinsics.checkNotNullParameter(stylePropertyValue, "<this>");
        try {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) unwrap(stylePropertyValue, Object.class);
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static final Value toValue(Feature feature) {
        Intrinsics.checkNotNullParameter(feature, "<this>");
        TypeUtils typeUtils = TypeUtils.INSTANCE;
        String json = feature.toJson();
        Intrinsics.checkNotNullExpressionValue(json, "this.toJson()");
        return typeUtils.wrapToValue(json);
    }

    public static final Value toValue(FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "<this>");
        TypeUtils typeUtils = TypeUtils.INSTANCE;
        String json = featureCollection.toJson();
        Intrinsics.checkNotNullExpressionValue(json, "this.toJson()");
        return typeUtils.wrapToValue(json);
    }

    public static final Value toValue(Geometry geometry) {
        Intrinsics.checkNotNullParameter(geometry, "<this>");
        TypeUtils typeUtils = TypeUtils.INSTANCE;
        String json = geometry.toJson();
        Intrinsics.checkNotNullExpressionValue(json, "this.toJson()");
        return typeUtils.wrapToValue(json);
    }

    public static final TransitionOptions transition(Function1<? super TransitionOptions.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        TransitionOptions.Builder builder = new TransitionOptions.Builder();
        block.invoke(builder);
        TransitionOptions transition = builder.build();
        Intrinsics.checkNotNullExpressionValue(transition, "transition");
        return transition;
    }
}
