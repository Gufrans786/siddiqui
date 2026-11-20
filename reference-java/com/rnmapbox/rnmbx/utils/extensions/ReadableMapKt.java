package com.rnmapbox.rnmbx.utils.extensions;

import ch.qos.logback.core.joran.action.Action;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.ViewProps;
import com.google.gson.JsonObject;
import com.mapbox.maps.EdgeInsets;
import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.utils.Logger;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0004\u001a\u0019\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\n\u001a\u0019\u0010\u000b\u001a\u0004\u0018\u00010\f*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\r\u001a#\u0010\u000e\u001a\u0004\u0018\u00010\f*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u0005¢\u0006\u0002\u0010\u0010\u001a#\u0010\u0011\u001a\u0004\u0018\u00010\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u0005¢\u0006\u0002\u0010\u0012\u001a\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u001a\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u001a\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u001a\n\u0010\u0017\u001a\u00020\u0018*\u00020\u0002\u001a\n\u0010\u0019\u001a\u00020\u0005*\u00020\u0002\u001a\f\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u0002\u001a\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u001d*\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001f¨\u0006 "}, d2 = {"forEach", "", "Lcom/facebook/react/bridge/ReadableMap;", TSScheduleManager.ACTION_NAME, "Lkotlin/Function2;", "", "", "getIfDouble", "", Action.KEY_ATTRIBUTE, "(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/Double;", "getIfBoolean", "", "(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/Boolean;", "getAndLogIfNotBoolean", HeaderParameterNames.AUTHENTICATION_TAG, "(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;", "getAndLogIfNotDouble", "(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;", "getAndLogIfNotString", "getAndLogIfNotArray", "Lcom/facebook/react/bridge/ReadableArray;", "getAndLogIfNotMap", "toJsonObject", "Lcom/google/gson/JsonObject;", "toJson", "toGeometry", "Lcom/mapbox/geojson/Geometry;", "toPadding", "Lcom/mapbox/maps/EdgeInsets;", "density", "", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ReadableMapKt {

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

    public static final void forEach(ReadableMap readableMap, Function2<? super String, Object, Unit> action) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Iterator<Map.Entry<String, Object>> entryIterator = readableMap.getEntryIterator();
        while (entryIterator.hasNext()) {
            Map.Entry<String, Object> next = entryIterator.next();
            Object value = next.getValue();
            if (value != null) {
                action.invoke(next.getKey(), value);
            } else {
                Logger.INSTANCE.d("ReadableMap", "Skipping null value for key: " + ((Object) next.getKey()));
            }
        }
    }

    public static final Double getIfDouble(ReadableMap readableMap, String key) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (readableMap.hasKey(key) && readableMap.getType(key) == ReadableType.Number) {
            return Double.valueOf(readableMap.getDouble(key));
        }
        return null;
    }

    public static final Boolean getIfBoolean(ReadableMap readableMap, String key) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (readableMap.hasKey(key) && readableMap.getType(key) == ReadableType.Boolean) {
            return Boolean.valueOf(readableMap.getBoolean(key));
        }
        return null;
    }

    public static Boolean getAndLogIfNotBoolean$default(ReadableMap readableMap, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "RNMBXReadableMap";
        }
        return getAndLogIfNotBoolean(readableMap, str, str2);
    }

    public static final Boolean getAndLogIfNotBoolean(ReadableMap readableMap, String key, String tag) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (readableMap.hasKey(key)) {
            if (readableMap.getType(key) == ReadableType.Boolean) {
                return Boolean.valueOf(readableMap.getBoolean(key));
            }
            Logger.INSTANCE.e("RNMBXReadableMap", key + " is expected to be a boolean but was: " + readableMap.getType(key));
        }
        return null;
    }

    public static Double getAndLogIfNotDouble$default(ReadableMap readableMap, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "RNMBXReadableMap";
        }
        return getAndLogIfNotDouble(readableMap, str, str2);
    }

    public static final Double getAndLogIfNotDouble(ReadableMap readableMap, String key, String tag) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (readableMap.hasKey(key)) {
            if (readableMap.getType(key) == ReadableType.Number) {
                return Double.valueOf(readableMap.getDouble(key));
            }
            Logger.INSTANCE.e("RNMBXReadableMap", key + " is expected to be a double but was: " + readableMap.getType(key));
        }
        return null;
    }

    public static String getAndLogIfNotString$default(ReadableMap readableMap, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "RNMBXReadableMap";
        }
        return getAndLogIfNotString(readableMap, str, str2);
    }

    public static final String getAndLogIfNotString(ReadableMap readableMap, String key, String tag) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (readableMap.hasKey(key)) {
            if (readableMap.getType(key) == ReadableType.String) {
                return readableMap.getString(key);
            }
            Logger.INSTANCE.e("RNMBXReadableMap", key + " is expected to be a string but was: " + readableMap.getType(key));
        }
        return null;
    }

    public static ReadableArray getAndLogIfNotArray$default(ReadableMap readableMap, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "RNMBXReadableMap";
        }
        return getAndLogIfNotArray(readableMap, str, str2);
    }

    public static final ReadableArray getAndLogIfNotArray(ReadableMap readableMap, String key, String tag) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (readableMap.hasKey(key)) {
            if (readableMap.getType(key) == ReadableType.Array) {
                return readableMap.getArray(key);
            }
            Logger.INSTANCE.e("RNMBXReadableMap", key + " is exected to be a Map but was: " + readableMap.getType(key));
        }
        return null;
    }

    public static ReadableMap getAndLogIfNotMap$default(ReadableMap readableMap, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "RNMBXReadableMap";
        }
        return getAndLogIfNotMap(readableMap, str, str2);
    }

    public static final ReadableMap getAndLogIfNotMap(ReadableMap readableMap, String key, String tag) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (readableMap.hasKey(key)) {
            if (readableMap.getType(key) == ReadableType.Map) {
                return readableMap.getMap(key);
            }
            Logger.INSTANCE.e("RNMBXReadableMap", key + " is exected to be a Map but was: " + readableMap.getType(key));
        }
        return null;
    }

    public static final JsonObject toJsonObject(ReadableMap readableMap) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        JsonObject jsonObject = new JsonObject();
        ReadableMapKeySetIterator readableMapKeySetIteratorKeySetIterator = readableMap.keySetIterator();
        while (readableMapKeySetIteratorKeySetIterator.hasNextKey()) {
            String strNextKey = readableMapKeySetIteratorKeySetIterator.nextKey();
            switch (WhenMappings.$EnumSwitchMapping$0[readableMap.getType(strNextKey).ordinal()]) {
                case 1:
                    ReadableMap map = readableMap.getMap(strNextKey);
                    Intrinsics.checkNotNull(map);
                    jsonObject.add(strNextKey, toJsonObject(map));
                    break;
                case 2:
                    ReadableArray array = readableMap.getArray(strNextKey);
                    Intrinsics.checkNotNull(array);
                    jsonObject.add(strNextKey, ReadableArrayKt.toJsonArray(array));
                    break;
                case 3:
                    jsonObject.add(strNextKey, null);
                    break;
                case 4:
                    jsonObject.addProperty(strNextKey, Double.valueOf(readableMap.getDouble(strNextKey)));
                    break;
                case 5:
                    jsonObject.addProperty(strNextKey, readableMap.getString(strNextKey));
                    break;
                case 6:
                    jsonObject.addProperty(strNextKey, Boolean.valueOf(readableMap.getBoolean(strNextKey)));
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        return jsonObject;
    }

    public static final String toJson(ReadableMap readableMap) {
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        String string = toJsonObject(readableMap).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static final com.mapbox.geojson.Geometry toGeometry(com.facebook.react.bridge.ReadableMap r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.rnmapbox.rnmbx.utils.extensions.ReadableMapKt.toGeometry(com.facebook.react.bridge.ReadableMap):com.mapbox.geojson.Geometry");
    }

    public static EdgeInsets toPadding$default(ReadableMap readableMap, String str, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "RNMBXReadableMap";
        }
        return toPadding(readableMap, str, f);
    }

    public static final EdgeInsets toPadding(ReadableMap readableMap, String tag, float f) {
        boolean z;
        double d;
        double dDoubleValue;
        double dDoubleValue2;
        Intrinsics.checkNotNullParameter(readableMap, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Double andLogIfNotDouble = getAndLogIfNotDouble(readableMap, ViewProps.TOP, tag);
        boolean z2 = false;
        double dDoubleValue3 = 0.0d;
        if (andLogIfNotDouble != null) {
            double dDoubleValue4 = andLogIfNotDouble.doubleValue() * ((double) f);
            z = false;
            d = dDoubleValue4;
        } else {
            z = true;
            d = 0.0d;
        }
        Double andLogIfNotDouble2 = getAndLogIfNotDouble(readableMap, ViewProps.BOTTOM, tag);
        if (andLogIfNotDouble2 != null) {
            z = false;
            dDoubleValue = andLogIfNotDouble2.doubleValue() * ((double) f);
        } else {
            dDoubleValue = 0.0d;
        }
        Double andLogIfNotDouble3 = getAndLogIfNotDouble(readableMap, ViewProps.LEFT, tag);
        if (andLogIfNotDouble3 != null) {
            dDoubleValue2 = andLogIfNotDouble3.doubleValue() * ((double) f);
            z = false;
        } else {
            dDoubleValue2 = 0.0d;
        }
        Double andLogIfNotDouble4 = getAndLogIfNotDouble(readableMap, ViewProps.RIGHT, tag);
        if (andLogIfNotDouble4 != null) {
            dDoubleValue3 = ((double) f) * andLogIfNotDouble4.doubleValue();
        } else {
            z2 = z;
        }
        double d2 = dDoubleValue3;
        if (z2) {
            return null;
        }
        return new EdgeInsets(d, dDoubleValue2, dDoubleValue, d2);
    }
}
