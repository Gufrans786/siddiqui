package com.rnmapbox.rnmbx.utils.extensions;

import com.mapbox.bindgen.Value;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toJSONObject", "Lorg/json/JSONObject;", "Lcom/mapbox/bindgen/Value;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ValueKt {
    public static final JSONObject toJSONObject(Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        String json = value.toJson();
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return new JSONObject(json);
    }
}
