package com.rnmapbox.rnmbx.components.location;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableType;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.extensions.ReadableArrayKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"_convertToDoubleValueOrExpression", "Lcom/mapbox/bindgen/Value;", "value", "Lcom/facebook/react/bridge/Dynamic;", "name", "", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXNativeUserLocationManagerKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.Array.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.Number.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Value _convertToDoubleValueOrExpression(Dynamic dynamic, String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (dynamic == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[dynamic.getType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Value.valueOf(dynamic.asDouble());
            }
            Logger.INSTANCE.e("RNMBXNativeUserLocationmanager", "_convertToExpressionString: cannot convert " + name + " to a double or double exrpession. " + dynamic);
            return null;
        }
        ReadableArray readableArrayAsArray = dynamic.asArray();
        if (readableArrayAsArray == null) {
            Logger.INSTANCE.e("RNMBXNativeUserLocationManager", "_convertToDoubleValueOrExpression: array is null for " + name);
            return null;
        }
        Expression.Companion companion = Expression.INSTANCE;
        String json = new Gson().toJson((JsonElement) ReadableArrayKt.toJsonArray(readableArrayAsArray));
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return companion.fromRaw(json);
    }
}
