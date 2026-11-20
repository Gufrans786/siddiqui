package com.rnmapbox.rnmbx.utils;

import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import java.util.Locale;
import javax.annotation.Nullable;

public class ExpressionParser {
    static final String LOG_TAG = "RNMBXMapView";
    static final String TYPE_ARRAY = "array";
    static final String TYPE_BOOL = "boolean";
    static final String TYPE_MAP = "hashmap";
    static final String TYPE_NUMBER = "number";
    static final String TYPE_STRING = "string";

    @Nullable
    public static Expression from(@Nullable ReadableArray readableArray) {
        if (readableArray != null && readableArray.size() != 0) {
            try {
                return Expression.fromRaw(new Gson().toJson((JsonElement) ConvertUtils.toJsonArray(readableArray)));
            } catch (Exception e) {
                Logger.e("RNMBXMapView", "An error occurred while attempting to parse the expression", e);
            }
        }
        return null;
    }

    @Nullable
    public static Expression fromTyped(ReadableMap readableMap) {
        return Expression.fromRaw(new Gson().toJson(ConvertUtils.typedToJsonElement(readableMap)));
    }

    public static Expression from(ReadableMap readableMap) {
        return Expression.fromRaw("[" + stringExpression(readableMap) + "]");
    }

    private static String stringExpression(ReadableMap readableMap) {
        String string = readableMap.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE);
        if ("string".equals(string)) {
            return String.format(Locale.ENGLISH, "\"%s\"", readableMap.getString("value"));
        }
        if (TYPE_NUMBER.equals(string)) {
            return String.format(Locale.ENGLISH, "%f", Double.valueOf(readableMap.getDouble("value")));
        }
        if ("boolean".equals(string)) {
            return String.format(Locale.ENGLISH, "%b", Boolean.valueOf(readableMap.getBoolean("value")));
        }
        if (TYPE_ARRAY.equals(string)) {
            ReadableArray array = readableMap.getArray("value");
            String str = "[";
            for (int i = 0; i < array.size(); i++) {
                str = str + stringExpression(array.getMap(i));
                if (i < array.size() - 1) {
                    str = str + ",";
                }
            }
            return str + "]";
        }
        return "";
    }
}
