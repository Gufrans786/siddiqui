package com.rnmapbox.rnmbx.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.joran.action.Action;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0014\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eJ\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00072\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f0\u0011J\u0013\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0002\u0010\u0013R#\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/PropertyChanges;", ExifInterface.GPS_DIRECTION_TRUE, "", "<init>", "()V", "changes", "", "", "Lcom/rnmapbox/rnmbx/utils/PropertyUpdater;", "getChanges", "()Ljava/util/Map;", "add", "", "change", "Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;", Action.KEY_ATTRIBUTE, "apply", "Lkotlin/Function1;", TypedValues.AttributesType.S_TARGET, "(Ljava/lang/Object;)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PropertyChanges<T> {
    private final Map<String, PropertyUpdater<T>> changes = new LinkedHashMap();

    public final Map<String, PropertyUpdater<T>> getChanges() {
        return this.changes;
    }

    public final void add(PropertyUpdaterWithName<T> change) {
        Intrinsics.checkNotNullParameter(change, "change");
        this.changes.put(change.getName(), change);
    }

    public final void add(String key, Function1<? super T, Unit> apply) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(apply, "apply");
        this.changes.put(key, new CustomPropUpdater(apply));
    }

    public final void apply(T target) {
        Intrinsics.checkNotNullParameter(target, "target");
        Iterator<Map.Entry<String, PropertyUpdater<T>>> it = this.changes.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().apply(target);
        }
        this.changes.clear();
    }
}
