package com.rnmapbox.rnmbx.utils.extensions;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.ReadableType;
import com.mapbox.bindgen.Value;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\u001a&\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0007\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\b\u001a\u0011\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\b¢\u0006\u0002\u0010\u000b\u001a\u0011\u0010\f\u001a\u0004\u0018\u00010\r*\u00020\b¢\u0006\u0002\u0010\u000e\u001a\f\u0010\u000f\u001a\u0004\u0018\u00010\u0002*\u00020\b¨\u0006\u0010"}, d2 = {"toValueHashMap", "Ljava/util/HashMap;", "", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "Lcom/facebook/react/bridge/ReadableMap;", "toValue", "Lcom/facebook/react/bridge/ReadableArray;", "Lcom/facebook/react/bridge/Dynamic;", "asBooleanOrNull", "", "(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Boolean;", "asDoubleOrNull", "", "(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Double;", "asStringOrNull", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DynamicKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.Null.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.Boolean.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReadableType.Number.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReadableType.String.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReadableType.Array.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ReadableType.Map.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final HashMap<String, Value> toValueHashMap(ReadableMap readableMap) {
        Value valueNullValue;
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        HashMap<String, Value> map = new HashMap<>();
        ReadableMapKeySetIterator readableMapKeySetIteratorKeySetIterator = readableMap.keySetIterator();
        while (readableMapKeySetIteratorKeySetIterator.hasNextKey()) {
            String strNextKey = readableMapKeySetIteratorKeySetIterator.nextKey();
            HashMap<String, Value> map2 = map;
            switch (WhenMappings.$EnumSwitchMapping$0[readableMap.getType(strNextKey).ordinal()]) {
                case 1:
                    valueNullValue = Value.nullValue();
                    break;
                case 2:
                    valueNullValue = Value.valueOf(readableMap.getBoolean(strNextKey));
                    break;
                case 3:
                    valueNullValue = Value.valueOf(readableMap.getDouble(strNextKey));
                    break;
                case 4:
                    String string = readableMap.getString(strNextKey);
                    Intrinsics.checkNotNull(string);
                    valueNullValue = Value.valueOf(string);
                    break;
                case 5:
                    ReadableArray array = readableMap.getArray(strNextKey);
                    Intrinsics.checkNotNull(array);
                    valueNullValue = toValue(array);
                    break;
                case 6:
                    ReadableMap map3 = readableMap.getMap(strNextKey);
                    Intrinsics.checkNotNull(map3);
                    valueNullValue = toValue(map3);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            map2.put(strNextKey, valueNullValue);
        }
        return map;
    }

    public static final Value toValue(ReadableMap readableMap) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Value valueValueOf = Value.valueOf(toValueHashMap(readableMap));
        Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(...)");
        return valueValueOf;
    }

    public static final Value toValue(ReadableArray readableArray) {
        Intrinsics.checkNotNullParameter(readableArray, "<this>");
        ArrayList arrayList = new ArrayList(readableArray.size());
        int size = readableArray.size();
        for (int i = 0; i < size; i++) {
            Object objNullValue = null;
            switch (WhenMappings.$EnumSwitchMapping$0[readableArray.getType(i).ordinal()]) {
                case 1:
                    objNullValue = Value.nullValue();
                    break;
                case 2:
                    objNullValue = Value.valueOf(readableArray.getBoolean(i));
                    break;
                case 3:
                    objNullValue = Value.valueOf(readableArray.getDouble(i));
                    break;
                case 4:
                    String string = readableArray.getString(i);
                    if (string == null || (objNullValue = Value.valueOf(string)) == null) {
                        Logger.INSTANCE.d("ReadableArray", "Skipping null string at index " + i);
                        objNullValue = Unit.INSTANCE;
                    }
                    break;
                case 5:
                    ReadableArray array = readableArray.getArray(i);
                    if (array != null) {
                        objNullValue = toValue(array);
                    }
                    break;
                case 6:
                    ReadableMap map = readableArray.getMap(i);
                    if (map != null) {
                        objNullValue = toValue(map);
                    }
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            if (objNullValue != null) {
                arrayList.add((Value) objNullValue);
            }
        }
        Value valueValueOf = Value.valueOf(arrayList);
        Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(...)");
        return valueValueOf;
    }

    public static final Value toValue(Dynamic dynamic) {
        Intrinsics.checkNotNullParameter(dynamic, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[dynamic.getType().ordinal()]) {
            case 1:
                Value valueNullValue = Value.nullValue();
                Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue(...)");
                return valueNullValue;
            case 2:
                Value valueValueOf = Value.valueOf(dynamic.asBoolean());
                Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(...)");
                return valueValueOf;
            case 3:
                Value valueValueOf2 = Value.valueOf(dynamic.asDouble());
                Intrinsics.checkNotNullExpressionValue(valueValueOf2, "valueOf(...)");
                return valueValueOf2;
            case 4:
                String strAsString = dynamic.asString();
                if (strAsString == null) {
                    Logger.INSTANCE.e("Dynamic", "String value is null when converting to Value");
                    Value valueNullValue2 = Value.nullValue();
                    Intrinsics.checkNotNull(valueNullValue2);
                    return valueNullValue2;
                }
                Value valueValueOf3 = Value.valueOf(strAsString);
                Intrinsics.checkNotNull(valueValueOf3);
                return valueValueOf3;
            case 5:
                ReadableArray readableArrayAsArray = dynamic.asArray();
                if (readableArrayAsArray == null) {
                    Logger.INSTANCE.e("Dynamic", "Array value is null when converting to Value");
                    Value valueNullValue3 = Value.nullValue();
                    Intrinsics.checkNotNull(valueNullValue3);
                    return valueNullValue3;
                }
                return toValue(readableArrayAsArray);
            case 6:
                ReadableMap readableMapAsMap = dynamic.asMap();
                if (readableMapAsMap == null) {
                    Logger.INSTANCE.e("Dynamic", "Map value is null when converting to Value");
                    Value valueNullValue4 = Value.nullValue();
                    Intrinsics.checkNotNull(valueNullValue4);
                    return valueNullValue4;
                }
                return toValue(readableMapAsMap);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final Boolean asBooleanOrNull(Dynamic dynamic) {
        Intrinsics.checkNotNullParameter(dynamic, "<this>");
        if (dynamic.isNull()) {
            return null;
        }
        return Boolean.valueOf(dynamic.asBoolean());
    }

    public static final Double asDoubleOrNull(Dynamic dynamic) {
        Intrinsics.checkNotNullParameter(dynamic, "<this>");
        if (dynamic.isNull()) {
            return null;
        }
        return Double.valueOf(dynamic.asDouble());
    }

    public static final String asStringOrNull(Dynamic dynamic) {
        Intrinsics.checkNotNullParameter(dynamic, "<this>");
        if (dynamic.isNull()) {
            return null;
        }
        return dynamic.asString();
    }
}
