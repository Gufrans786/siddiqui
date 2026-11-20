package com.rnmapbox.rnmbx.utils.extensions;

import android.graphics.RectF;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.mapbox.geojson.Point;
import com.mapbox.maps.ScreenCoordinate;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\f\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\b*\u00020\u0002¨\u0006\t"}, d2 = {"toCoordinate", "Lcom/mapbox/geojson/Point;", "Lcom/facebook/react/bridge/ReadableArray;", "toScreenCoordinate", "Lcom/mapbox/maps/ScreenCoordinate;", "toRectF", "Landroid/graphics/RectF;", "toJsonArray", "Lcom/google/gson/JsonArray;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ReadableArrayKt {

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

    public static final Point toCoordinate(ReadableArray readableArray) {
        Intrinsics.checkNotNullParameter(readableArray, "<this>");
        if (readableArray.size() != 2) {
            Logger.INSTANCE.e("ReadableArray.toCoordinate", "Cannot convert " + readableArray + " to point, 2 coordinates are required");
        }
        Point pointFromLngLat = Point.fromLngLat(readableArray.getDouble(0), readableArray.getDouble(1));
        Intrinsics.checkNotNullExpressionValue(pointFromLngLat, "fromLngLat(...)");
        return pointFromLngLat;
    }

    public static final ScreenCoordinate toScreenCoordinate(ReadableArray readableArray) {
        Intrinsics.checkNotNullParameter(readableArray, "<this>");
        if (readableArray.size() != 2) {
            Logger.INSTANCE.e("ReadableArray.toCoordinate", "Cannot convert " + readableArray + " to point, 2 coordinates are required");
        }
        return new ScreenCoordinate(readableArray.getDouble(0), readableArray.getDouble(1));
    }

    public static final RectF toRectF(ReadableArray readableArray) {
        Intrinsics.checkNotNullParameter(readableArray, "<this>");
        if (readableArray.size() != 4) {
            return null;
        }
        return new RectF(Float.min((float) readableArray.getDouble(3), (float) readableArray.getDouble(1)), Float.min((float) readableArray.getDouble(0), (float) readableArray.getDouble(2)), Float.max((float) readableArray.getDouble(3), (float) readableArray.getDouble(1)), Float.max((float) readableArray.getDouble(0), (float) readableArray.getDouble(2)));
    }

    public static final JsonArray toJsonArray(ReadableArray readableArray) {
        Intrinsics.checkNotNullParameter(readableArray, "<this>");
        JsonArray jsonArray = new JsonArray(readableArray.size());
        int size = readableArray.size();
        for (int i = 0; i < size; i++) {
            switch (WhenMappings.$EnumSwitchMapping$0[readableArray.getType(i).ordinal()]) {
                case 1:
                    ReadableMap map = readableArray.getMap(i);
                    if (map != null) {
                        jsonArray.add(ReadableMapKt.toJsonObject(map));
                    } else {
                        Logger.INSTANCE.d("ReadableTypeMap", "Map at index " + i + " is null");
                    }
                    break;
                case 2:
                    ReadableArray array = readableArray.getArray(i);
                    if (array != null) {
                        jsonArray.add(toJsonArray(array));
                    } else {
                        Logger.INSTANCE.d("ReadableTypeArray", "Array at index " + i + " is null");
                    }
                    break;
                case 3:
                    jsonArray.add((JsonElement) null);
                    break;
                case 4:
                    jsonArray.add(Double.valueOf(readableArray.getDouble(i)));
                    break;
                case 5:
                    jsonArray.add(readableArray.getString(i));
                    break;
                case 6:
                    jsonArray.add(Boolean.valueOf(readableArray.getBoolean(i)));
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        return jsonArray;
    }
}
