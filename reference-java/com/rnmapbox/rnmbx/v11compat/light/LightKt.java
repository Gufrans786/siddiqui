package com.rnmapbox.rnmbx.v11compat.light;

import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.light.generated.FlatLight;
import com.mapbox.maps.extension.style.light.generated.FlatLightDslReceiver;
import com.mapbox.maps.extension.style.light.generated.FlatLightKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001\u001a\n\u0010\u0006\u001a\u00060\u0001j\u0002`\u0007*\n\u0010\u0000\"\u00020\u00012\u00020\u0001¨\u0006\b"}, d2 = {"Light", "Lcom/mapbox/maps/extension/style/light/generated/FlatLight;", "setLight", "", "Lcom/mapbox/maps/Style;", "light", "createLight", "Lcom/rnmapbox/rnmbx/v11compat/light/Light;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class LightKt {
    public static final void setLight(Style style, FlatLight light) {
        Intrinsics.checkNotNullParameter(style, "<this>");
        Intrinsics.checkNotNullParameter(light, "light");
        LightUtils.setLight(style, light);
    }

    public static final FlatLight createLight() {
        return FlatLightKt.flatLight$default(null, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LightKt.createLight$lambda$0((FlatLightDslReceiver) obj);
            }
        }, 1, null);
    }

    public static final Unit createLight$lambda$0(FlatLightDslReceiver flatLight) {
        Intrinsics.checkNotNullParameter(flatLight, "$this$flatLight");
        return Unit.INSTANCE;
    }
}
