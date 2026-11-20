package com.rnmapbox.rnmbx.utils;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.mapbox.bindgen.Value;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ReadableMapToValue {

    static class AnonymousClass1 {
        static final int[] $SwitchMap$com$facebook$react$bridge$ReadableType;

        static {
            int[] iArr = new int[ReadableType.values().length];
            $SwitchMap$com$facebook$react$bridge$ReadableType = iArr;
            try {
                iArr[ReadableType.Map.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Array.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.String.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Number.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Boolean.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.Null.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static Value convert(Dynamic dynamic) {
        switch (AnonymousClass1.$SwitchMap$com$facebook$react$bridge$ReadableType[dynamic.getType().ordinal()]) {
            case 1:
                return Value.valueOf(convert(dynamic.asMap()));
            case 2:
                return Value.valueOf(convert(dynamic.asArray()));
            case 3:
                return Value.valueOf(dynamic.asString());
            case 4:
                return Value.valueOf(dynamic.asDouble());
            case 5:
                return Value.valueOf(dynamic.asBoolean());
            case 6:
                return Value.nullValue();
            default:
                return null;
        }
    }

    static List<Value> convert(ReadableArray readableArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < readableArray.size(); i++) {
            arrayList.add(convert(readableArray.getDynamic(i)));
        }
        return arrayList;
    }

    public static HashMap<String, Value> convert(ReadableMap readableMap) {
        HashMap<String, Value> map = new HashMap<>();
        Iterator<Map.Entry<String, Object>> entryIterator = readableMap.getEntryIterator();
        while (entryIterator.hasNext()) {
            String key = entryIterator.next().getKey();
            map.put(key, convert(readableMap.getDynamic(key)));
        }
        return map;
    }
}
