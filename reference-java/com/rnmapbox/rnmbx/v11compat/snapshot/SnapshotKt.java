package com.rnmapbox.rnmbx.v11compat.snapshot;

import android.graphics.Bitmap;
import com.mapbox.maps.ExtensionUtils;
import com.mapbox.maps.Image;
import com.mapbox.maps.MapSnapshotOptions;
import com.mapbox.maps.Snapshotter;
import com.transistorsoft.locationmanager.config.TSAuthorization;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0000\u001a\u0004\u0018\u00010\u0003\u001a(\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u001c\u0010\u0006\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00010\u0007\u001a\n\u0010\t\u001a\u00020\n*\u00020\b¨\u0006\u000b"}, d2 = {TSAuthorization.FIELD_ACCESS_TOKEN, "", "Lcom/mapbox/maps/MapSnapshotOptions$Builder;", "", "startV11", "Lcom/mapbox/maps/Snapshotter;", "callback", "Lkotlin/Function2;", "Landroid/graphics/Bitmap;", "toMapboxImage", "Lcom/mapbox/maps/Image;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SnapshotKt {
    public static final void accessToken(MapSnapshotOptions.Builder builder, String str) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
    }

    public static final void startV11(Snapshotter snapshotter, Function2<? super Bitmap, ? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(snapshotter, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        snapshotter.start(null, new SnapshotKt$sam$com_mapbox_maps_SnapshotResultCallback$0(callback));
    }

    public static final Image toMapboxImage(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return ExtensionUtils.toMapboxImage(bitmap);
    }
}
