package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

final class TileRegionMetadataCallbackNative implements TileRegionMetadataCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileRegionError, Value> expected);

    private TileRegionMetadataCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionMetadataCallbackPeerCleaner(j));
    }

    private static class TileRegionMetadataCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionMetadataCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionMetadataCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
