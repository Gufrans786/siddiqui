package com.rnmapbox.rnmbx.utils.extensions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u00030\u00020\u0001*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"toStringKeyPairs", "", "Lkotlin/Pair;", "", "", "(Ljava/util/Map;)[Lkotlin/Pair;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MapKt {
    public static final Pair<String, ?>[] toStringKeyPairs(Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Set<Map.Entry<?, ?>> setEntrySet = map.entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key instanceof String) {
                arrayList.add(TuplesKt.to(key, value));
            }
        }
        return (Pair[]) arrayList.toArray(new Pair[0]);
    }
}
