package com.rnmapbox.rnmbx.events.constants;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u001aC\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00042*\u0010\u0005\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u00070\u0006\"\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"ns", "", "name", "eventMapOf", "", "values", "", "Lkotlin/Pair;", "Lcom/rnmapbox/rnmbx/events/constants/EventKeys;", "([Lkotlin/Pair;)Ljava/util/Map;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class EventKeysKt {
    public static final String ns(String str) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str2 = String.format("%s.%s", Arrays.copyOf(new Object[]{"rct.mapbox", str}, 2));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        return str2;
    }

    public static final Map<String, String> eventMapOf(Pair<? extends EventKeys, String>... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        ArrayList arrayList = new ArrayList(values.length);
        for (Pair<? extends EventKeys, String> pair : values) {
            arrayList.add(new Pair(pair.component1().getValue(), pair.component2()));
        }
        Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        return MapsKt.mapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
    }
}
