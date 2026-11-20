package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;

@Deprecated
public final class OfflineRegionManager {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    private native void initialize();

    public native void createOfflineRegion(OfflineRegionGeometryDefinition offlineRegionGeometryDefinition, OfflineRegionCreateCallback offlineRegionCreateCallback);

    public native void createOfflineRegion(OfflineRegionTilePyramidDefinition offlineRegionTilePyramidDefinition, OfflineRegionCreateCallback offlineRegionCreateCallback);

    public native void getOfflineRegions(OfflineRegionCallback offlineRegionCallback);

    public native void mergeOfflineDatabase(String str, OfflineDatabaseMergeCallback offlineDatabaseMergeCallback);

    public native void setOfflineMapboxTileCountLimit(long j);

    public OfflineRegionManager() {
        initialize();
    }

    protected OfflineRegionManager(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new OfflineRegionManagerPeerCleaner(j));
    }

    private static class OfflineRegionManagerPeerCleaner implements Runnable {
        private long peer;

        public OfflineRegionManagerPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineRegionManager.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
