package com.rnmapbox.rnmbx.utils;

import android.graphics.PointF;
import android.graphics.RectF;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.joran.action.Action;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.NoSuchKeyException;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0007J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0016\u001a\u00020\u0005J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u00182\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0019\u001a\u00020\u001a2\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u001e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001eJ\u001e\u0010!\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/rnmapbox/rnmbx/utils/ConvertUtils;", "", "<init>", "()V", "LOG_TAG", "", "toJsonObject", "Lcom/google/gson/JsonObject;", "map", "Lcom/facebook/react/bridge/ReadableMap;", "toJsonArray", "Lcom/google/gson/JsonArray;", "array", "Lcom/facebook/react/bridge/ReadableArray;", "typedToJsonElement", "Lcom/google/gson/JsonElement;", "toWritableArray", "Lcom/facebook/react/bridge/WritableArray;", "toWritableMap", "Lcom/facebook/react/bridge/WritableMap;", "inObject", "getObjectFromString", "str", "toStringList", "", "toPointF", "Landroid/graphics/PointF;", "toRectF", "Landroid/graphics/RectF;", "getDouble", "", Action.KEY_ATTRIBUTE, "defaultValue", "getString", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConvertUtils {
    public static final ConvertUtils INSTANCE = new ConvertUtils();
    public static final String LOG_TAG = "ConvertUtils";

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.Map.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.Array.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReadableType.Null.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReadableType.Number.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReadableType.String.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ReadableType.Boolean.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ConvertUtils() {
    }

    public final JsonObject toJsonObject(ReadableMap map) {
        if (map == null) {
            return null;
        }
        JsonObject jsonObject = new JsonObject();
        ReadableMapKeySetIterator readableMapKeySetIteratorKeySetIterator = map.keySetIterator();
        while (readableMapKeySetIteratorKeySetIterator.hasNextKey()) {
            String strNextKey = readableMapKeySetIteratorKeySetIterator.nextKey();
            switch (WhenMappings.$EnumSwitchMapping$0[map.getType(strNextKey).ordinal()]) {
                case 1:
                    jsonObject.add(strNextKey, toJsonObject(map.getMap(strNextKey)));
                    break;
                case 2:
                    jsonObject.add(strNextKey, toJsonArray(map.getArray(strNextKey)));
                    break;
                case 3:
                    jsonObject.add(strNextKey, null);
                    break;
                case 4:
                    jsonObject.addProperty(strNextKey, Double.valueOf(map.getDouble(strNextKey)));
                    break;
                case 5:
                    jsonObject.addProperty(strNextKey, map.getString(strNextKey));
                    break;
                case 6:
                    jsonObject.addProperty(strNextKey, Boolean.valueOf(map.getBoolean(strNextKey)));
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        return jsonObject;
    }

    @JvmStatic
    public static final JsonArray toJsonArray(ReadableArray array) {
        if (array == null) {
            return null;
        }
        JsonArray jsonArray = new JsonArray(array.size());
        int size = array.size();
        for (int i = 0; i < size; i++) {
            switch (WhenMappings.$EnumSwitchMapping$0[array.getType(i).ordinal()]) {
                case 1:
                    jsonArray.add(INSTANCE.toJsonObject(array.getMap(i)));
                    break;
                case 2:
                    jsonArray.add(toJsonArray(array.getArray(i)));
                    break;
                case 3:
                    jsonArray.add((JsonElement) null);
                    break;
                case 4:
                    jsonArray.add(Double.valueOf(array.getDouble(i)));
                    break;
                case 5:
                    jsonArray.add(array.getString(i));
                    break;
                case 6:
                    jsonArray.add(Boolean.valueOf(array.getBoolean(i)));
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        return jsonArray;
    }

    @JvmStatic
    public static final JsonElement typedToJsonElement(ReadableMap map) {
        if (map == null) {
            return null;
        }
        String string = map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE);
        if (string != null) {
            switch (string.hashCode()) {
                case -1034364087:
                    if (string.equals("number")) {
                        return new JsonPrimitive(Double.valueOf(map.getDouble("value")));
                    }
                    break;
                case -891985903:
                    if (string.equals(TypedValues.Custom.S_STRING)) {
                        return new JsonPrimitive(map.getString("value"));
                    }
                    break;
                case 64711720:
                    if (string.equals(TypedValues.Custom.S_BOOLEAN)) {
                        return new JsonPrimitive(Boolean.valueOf(map.getBoolean("value")));
                    }
                    break;
                case 93090393:
                    if (string.equals("array")) {
                        ReadableArray array = map.getArray("value");
                        Intrinsics.checkNotNull(array);
                        JsonArray jsonArray = new JsonArray(array.size());
                        int size = array.size();
                        for (int i = 0; i < size; i++) {
                            jsonArray.add(typedToJsonElement(array.getMap(i)));
                        }
                        return jsonArray;
                    }
                    break;
                case 697541006:
                    if (string.equals("hashmap")) {
                        JsonObject jsonObject = new JsonObject();
                        ReadableArray array2 = map.getArray("value");
                        Intrinsics.checkNotNull(array2);
                        int size2 = array2.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            ReadableArray array3 = array2.getArray(i2);
                            Intrinsics.checkNotNull(array3);
                            ReadableMap map2 = array3.getMap(0);
                            Intrinsics.checkNotNull(map2);
                            jsonObject.add(map2.getString("value"), typedToJsonElement(array3.getMap(1)));
                        }
                        return jsonObject;
                    }
                    break;
            }
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("Unrecognized type {}", Arrays.copyOf(new Object[]{map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        throw new RuntimeException(str);
    }

    public final WritableArray toWritableArray(JsonArray array) {
        Intrinsics.checkNotNullParameter(array, "array");
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Intrinsics.checkNotNullExpressionValue(writableArrayCreateArray, "createArray(...)");
        int size = array.size();
        for (int i = 0; i < size; i++) {
            JsonElement jsonElement = array.get(i);
            if (jsonElement.isJsonArray()) {
                JsonArray asJsonArray = jsonElement.getAsJsonArray();
                Intrinsics.checkNotNullExpressionValue(asJsonArray, "getAsJsonArray(...)");
                writableArrayCreateArray.pushArray(toWritableArray(asJsonArray));
            } else if (jsonElement.isJsonObject()) {
                JsonObject asJsonObject = jsonElement.getAsJsonObject();
                Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                writableArrayCreateArray.pushMap(toWritableMap(asJsonObject));
            } else if (jsonElement.isJsonPrimitive()) {
                JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                if (asJsonPrimitive.isBoolean()) {
                    writableArrayCreateArray.pushBoolean(asJsonPrimitive.getAsBoolean());
                } else if (asJsonPrimitive.isNumber()) {
                    writableArrayCreateArray.pushDouble(asJsonPrimitive.getAsDouble());
                } else {
                    writableArrayCreateArray.pushString(asJsonPrimitive.getAsString());
                }
            }
        }
        return writableArrayCreateArray;
    }

    public final WritableMap toWritableMap(JsonObject inObject) {
        Intrinsics.checkNotNullParameter(inObject, "inObject");
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        for (Map.Entry<String, JsonElement> entry : inObject.entrySet()) {
            String key = entry.getKey();
            JsonElement value = entry.getValue();
            if (value.isJsonPrimitive()) {
                JsonPrimitive asJsonPrimitive = value.getAsJsonPrimitive();
                if (asJsonPrimitive.isBoolean()) {
                    Intrinsics.checkNotNull(key);
                    writableMapCreateMap.putBoolean(key, asJsonPrimitive.getAsBoolean());
                } else if (asJsonPrimitive.isNumber()) {
                    Intrinsics.checkNotNull(key);
                    writableMapCreateMap.putDouble(key, asJsonPrimitive.getAsDouble());
                } else {
                    Intrinsics.checkNotNull(key);
                    writableMapCreateMap.putString(key, asJsonPrimitive.getAsString());
                }
            } else if (value.isJsonArray()) {
                Intrinsics.checkNotNull(key);
                JsonArray asJsonArray = value.getAsJsonArray();
                Intrinsics.checkNotNullExpressionValue(asJsonArray, "getAsJsonArray(...)");
                writableMapCreateMap.putArray(key, toWritableArray(asJsonArray));
            } else if (value.isJsonObject()) {
                Intrinsics.checkNotNull(key);
                JsonObject asJsonObject = value.getAsJsonObject();
                Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                writableMapCreateMap.putMap(key, toWritableMap(asJsonObject));
            }
        }
        return writableMapCreateMap;
    }

    public final Object getObjectFromString(String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        try {
            return NumberFormat.getNumberInstance().parse(str);
        } catch (ParseException unused) {
            return str;
        }
    }

    public final List<String> toStringList(ReadableArray array) {
        ArrayList arrayList = new ArrayList();
        if (array != null) {
            int size = array.size();
            for (int i = 0; i < size; i++) {
                String string = array.getString(i);
                if (string != null) {
                    arrayList.add(string);
                }
            }
        }
        return arrayList;
    }

    public final PointF toPointF(ReadableArray array) {
        PointF pointF = new PointF();
        if (array == null) {
            return pointF;
        }
        pointF.set((float) array.getDouble(0), (float) array.getDouble(1));
        return pointF;
    }

    public final RectF toRectF(ReadableArray array) {
        RectF rectF = new RectF();
        if (array == null || array.size() == 0) {
            return null;
        }
        rectF.set((float) array.getDouble(3), (float) array.getDouble(0), (float) array.getDouble(1), (float) array.getDouble(2));
        return rectF;
    }

    public final double getDouble(String key, ReadableMap map, double defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(map, "map");
        try {
            return map.getDouble(key);
        } catch (NoSuchKeyException unused) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format("No key found for %s, using default value %f", Arrays.copyOf(new Object[]{key, Double.valueOf(defaultValue)}, 2));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            Log.d(LOG_TAG, str);
            return defaultValue;
        }
    }

    public final String getString(String key, ReadableMap map, String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        try {
            String string = map.getString(key);
            if (string != null) {
                return string;
            }
            ConvertUtils convertUtils = this;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format("key %s is null, using default value %s", Arrays.copyOf(new Object[]{key, defaultValue}, 2));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            Log.d(LOG_TAG, str);
        } catch (NoSuchKeyException unused) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String str2 = String.format("No key found for %s, using default value %s", Arrays.copyOf(new Object[]{key, defaultValue}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            Log.d(LOG_TAG, str2);
        }
        return defaultValue;
    }
}
