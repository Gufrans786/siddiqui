package com.rnmapbox.rnmbx.v11compat.offlinemanager;

import com.mapbox.common.MapboxOptions;
import com.mapbox.common.TileStore;
import com.mapbox.common.TilesetDescriptor;
import com.mapbox.maps.OfflineManager;
import com.mapbox.maps.OfflineRegionManager;
import com.mapbox.maps.StylePackLoadOptions;
import com.mapbox.maps.TilesetDescriptorOptions;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001aL\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u0015\u001a\u0012\u0010\u0016\u001a\u00020\u0017*\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0004¨\u0006\u0019"}, d2 = {"getOfflineRegionManager", "Lcom/mapbox/maps/OfflineRegionManager;", "getAccessToken", "Lkotlin/Function0;", "", "getOfflineManager", "Lcom/mapbox/maps/OfflineManager;", "tileStore", "Lcom/mapbox/common/TileStore;", "getTilesetDescriptors", "Ljava/util/ArrayList;", "Lcom/mapbox/common/TilesetDescriptor;", "Lkotlin/collections/ArrayList;", "offlineManager", "styleURI", "minZoom", "", "maxZoom", "stylePackOptions", "Lcom/mapbox/maps/StylePackLoadOptions;", "tilesets", "", "setAccessToken", "", "token", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class OfflineManagerKt {
    public static final OfflineRegionManager getOfflineRegionManager(Function0<String> getAccessToken) {
        Intrinsics.checkNotNullParameter(getAccessToken, "getAccessToken");
        return new OfflineRegionManager();
    }

    public static final OfflineManager getOfflineManager(TileStore tileStore, Function0<String> getAccessToken) {
        Intrinsics.checkNotNullParameter(tileStore, "tileStore");
        Intrinsics.checkNotNullParameter(getAccessToken, "getAccessToken");
        return new OfflineManager();
    }

    public static final ArrayList<TilesetDescriptor> getTilesetDescriptors(OfflineManager offlineManager, String styleURI, byte b, byte b2, StylePackLoadOptions stylePackOptions, List<String> tilesets) {
        Intrinsics.checkNotNullParameter(offlineManager, "offlineManager");
        Intrinsics.checkNotNullParameter(styleURI, "styleURI");
        Intrinsics.checkNotNullParameter(stylePackOptions, "stylePackOptions");
        Intrinsics.checkNotNullParameter(tilesets, "tilesets");
        TilesetDescriptor tilesetDescriptorCreateTilesetDescriptor = offlineManager.createTilesetDescriptor(new TilesetDescriptorOptions.Builder().styleURI(styleURI).minZoom(b).maxZoom(b2).stylePackOptions(stylePackOptions).pixelRatio(2.0f).build());
        Intrinsics.checkNotNullExpressionValue(tilesetDescriptorCreateTilesetDescriptor, "createTilesetDescriptor(...)");
        ArrayList<TilesetDescriptor> arrayListArrayListOf = CollectionsKt.arrayListOf(tilesetDescriptorCreateTilesetDescriptor);
        if (!tilesets.isEmpty()) {
            TilesetDescriptor tilesetDescriptorCreateTilesetDescriptor2 = offlineManager.createTilesetDescriptor(new TilesetDescriptorOptions.Builder().styleURI(styleURI).tilesets(tilesets).minZoom(b).maxZoom(b2).build());
            Intrinsics.checkNotNullExpressionValue(tilesetDescriptorCreateTilesetDescriptor2, "createTilesetDescriptor(...)");
            arrayListArrayListOf.add(tilesetDescriptorCreateTilesetDescriptor2);
        }
        return arrayListArrayListOf;
    }

    public static final void setAccessToken(TileStore tileStore, String token) {
        Intrinsics.checkNotNullParameter(tileStore, "<this>");
        Intrinsics.checkNotNullParameter(token, "token");
        MapboxOptions.setAccessToken(token);
    }
}
