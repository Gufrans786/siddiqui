package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public class TileStoreFilter {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native TileStoreFilter make();

    public native TileStoreFilter byDomain(TileDataDomain tileDataDomain);

    public native TileStoreFilter byStylePack(String str);

    public native TileStoreFilter byTileDataset(String str);

    public native TileStoreFilter byTileRegion(String str);

    public native TileStoreFilter byTileVersion(String str);

    public native TileStoreFilter excludeResources();

    public native TileStoreFilter excludeTiles();

    protected TileStoreFilter(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new TileStoreFilterPeerCleaner(j));
    }

    private static class TileStoreFilterPeerCleaner implements Runnable {
        private long peer;

        public TileStoreFilterPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileStoreFilter.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
