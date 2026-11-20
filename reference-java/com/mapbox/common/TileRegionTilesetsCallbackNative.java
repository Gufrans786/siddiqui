package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class TileRegionTilesetsCallbackNative implements TileRegionTilesetsCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileRegionError, TilesetDescriptor> expected);

    private TileRegionTilesetsCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionTilesetsCallbackPeerCleaner(j));
    }

    private static class TileRegionTilesetsCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionTilesetsCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionTilesetsCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
