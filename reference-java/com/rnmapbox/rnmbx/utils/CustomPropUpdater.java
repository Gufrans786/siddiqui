package com.rnmapbox.rnmbx.utils;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\rR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/CustomPropUpdater;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lcom/rnmapbox/rnmbx/utils/PropertyUpdater;", "_apply", "Lkotlin/Function1;", "", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "get_apply", "()Lkotlin/jvm/functions/Function1;", "apply", "item", "(Ljava/lang/Object;)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomPropUpdater<T> implements PropertyUpdater<T> {
    private final Function1<T, Unit> _apply;

    public CustomPropUpdater(Function1<? super T, Unit> _apply) {
        Intrinsics.checkNotNullParameter(_apply, "_apply");
        this._apply = _apply;
    }

    public final Function1<T, Unit> get_apply() {
        return this._apply;
    }

    @Override
    public void apply(T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this._apply.invoke(item);
    }
}
