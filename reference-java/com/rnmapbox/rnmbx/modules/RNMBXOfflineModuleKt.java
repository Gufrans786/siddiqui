package com.rnmapbox.rnmbx.modules;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.mapbox.common.TileRegion;
import com.mapbox.common.TileRegionLoadProgress;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0002\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\t\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\f\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\f\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u000f\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u000f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"RNMapboxInfoMetadataKey", "", "toPromise", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Result;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "error", "(Ljava/lang/Object;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V", "toPercentage", "", "Lcom/mapbox/common/TileRegionLoadProgress;", "hasCompleted", "", "Lcom/mapbox/common/TileRegion;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXOfflineModuleKt {
    public static final String RNMapboxInfoMetadataKey = "_rnmapbox";

    public static final <T> void toPromise(Object obj, Promise promise, String str) {
        if (Result.m1466exceptionOrNullimpl(obj) != null) {
            Exception excM1466exceptionOrNullimpl = Result.m1466exceptionOrNullimpl(obj);
            if (excM1466exceptionOrNullimpl == null) {
                excM1466exceptionOrNullimpl = new Exception("Unknown error");
            }
            promise.reject(str, excM1466exceptionOrNullimpl);
            return;
        }
        promise.resolve(obj);
    }

    public static final double toPercentage(TileRegionLoadProgress tileRegionLoadProgress) {
        Intrinsics.checkNotNullParameter(tileRegionLoadProgress, "<this>");
        return (tileRegionLoadProgress.getCompletedResourceCount() * 100.0d) / tileRegionLoadProgress.getRequiredResourceCount();
    }

    public static final boolean hasCompleted(TileRegionLoadProgress tileRegionLoadProgress) {
        Intrinsics.checkNotNullParameter(tileRegionLoadProgress, "<this>");
        return tileRegionLoadProgress.getCompletedResourceCount() == tileRegionLoadProgress.getRequiredResourceCount();
    }

    public static final double toPercentage(TileRegion tileRegion) {
        Intrinsics.checkNotNullParameter(tileRegion, "<this>");
        return (tileRegion.getCompletedResourceCount() * 100.0d) / tileRegion.getRequiredResourceCount();
    }

    public static final boolean hasCompleted(TileRegion tileRegion) {
        Intrinsics.checkNotNullParameter(tileRegion, "<this>");
        return tileRegion.getCompletedResourceCount() == tileRegion.getRequiredResourceCount();
    }
}
