package com.rnmapbox.rnmbx.utils.extensions;

import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Polygon;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\f\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002\u001a\f\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\u0002\u001a\f\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u000b¨\u0006\f"}, d2 = {"toGeometry", "Lcom/mapbox/geojson/Geometry;", "Lorg/json/JSONObject;", "toMapboxValue", "Lcom/mapbox/bindgen/Value;", "toWritableMap", "Lcom/facebook/react/bridge/WritableMap;", "toReadableMap", "Lcom/facebook/react/bridge/ReadableMap;", "toReadableArray", "Lcom/facebook/react/bridge/ReadableArray;", "Lorg/json/JSONArray;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class JSONObjectKt {
    public static final Geometry toGeometry(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        String strOptString = jSONObject.optString(SVGParser.XML_STYLESHEET_ATTR_TYPE);
        if (Intrinsics.areEqual(strOptString, "polygon") || Intrinsics.areEqual(strOptString, "Polygon")) {
            return Polygon.fromJson(jSONObject.toString());
        }
        Logger.INSTANCE.w("JSONObject", "Unexpected geometry: " + jSONObject);
        return null;
    }

    public static final Value toMapboxValue(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Value value = Value.fromJson(jSONObject.toString()).getValue();
        Intrinsics.checkNotNull(value);
        return value;
    }

    public static final WritableMap toWritableMap(JSONObject jSONObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                Intrinsics.checkNotNull(next);
                writableMapCreateMap.putMap(next, toReadableMap((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                Intrinsics.checkNotNull(next);
                writableMapCreateMap.putArray(next, toReadableArray((JSONArray) obj));
            } else if (obj instanceof Boolean) {
                Intrinsics.checkNotNull(next);
                writableMapCreateMap.putBoolean(next, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                Intrinsics.checkNotNull(next);
                writableMapCreateMap.putInt(next, ((Number) obj).intValue());
            } else if (obj instanceof Double) {
                Intrinsics.checkNotNull(next);
                writableMapCreateMap.putDouble(next, ((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                Intrinsics.checkNotNull(next);
                writableMapCreateMap.putString(next, (String) obj);
            } else {
                Intrinsics.checkNotNull(next);
                writableMapCreateMap.putString(next, obj.toString());
            }
        }
        return writableMapCreateMap;
    }

    public static final ReadableMap toReadableMap(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        return toWritableMap(jSONObject);
    }

    public static final ReadableArray toReadableArray(JSONArray jSONArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Intrinsics.checkNotNullExpressionValue(writableArrayCreateArray, "createArray(...)");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            Object obj = jSONArray.get(i);
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            if (obj instanceof JSONObject) {
                writableArrayCreateArray.pushMap(toReadableMap((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                writableArrayCreateArray.pushArray(toReadableArray((JSONArray) obj));
            } else if (obj instanceof Boolean) {
                writableArrayCreateArray.pushBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                writableArrayCreateArray.pushInt(((Number) obj).intValue());
            } else if (obj instanceof Double) {
                writableArrayCreateArray.pushDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                writableArrayCreateArray.pushString((String) obj);
            } else {
                writableArrayCreateArray.pushString(obj.toString());
            }
        }
        return writableArrayCreateArray;
    }
}
