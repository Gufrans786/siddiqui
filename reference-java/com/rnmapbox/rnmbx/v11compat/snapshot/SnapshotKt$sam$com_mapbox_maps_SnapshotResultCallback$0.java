package com.rnmapbox.rnmbx.v11compat.snapshot;

import android.graphics.Bitmap;
import com.mapbox.maps.SnapshotResultCallback;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class SnapshotKt$sam$com_mapbox_maps_SnapshotResultCallback$0 implements SnapshotResultCallback, FunctionAdapter {
    private final Function2 function;

    SnapshotKt$sam$com_mapbox_maps_SnapshotResultCallback$0(Function2 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof SnapshotResultCallback) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override
    public final Function<?> getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override
    public final void onSnapshotResult(Bitmap bitmap, String str) {
        this.function.invoke(bitmap, str);
    }
}
