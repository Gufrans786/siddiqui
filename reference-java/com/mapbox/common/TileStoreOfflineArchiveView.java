package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import java.util.HashMap;
import java.util.List;

public class TileStoreOfflineArchiveView {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native Expected<TileStoreImportError, TileStoreOfflineArchiveView> make(List<Long> list);

    public native HashMap<String, TileRegion> getRegions();

    public native long getRequiredResourceBytes();

    public native long getRequiredResourceCount();

    public native List<String> getStylePackURIs();

    protected TileStoreOfflineArchiveView(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new TileStoreOfflineArchiveViewPeerCleaner(j));
    }

    private static class TileStoreOfflineArchiveViewPeerCleaner implements Runnable {
        private long peer;

        public TileStoreOfflineArchiveViewPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileStoreOfflineArchiveView.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
