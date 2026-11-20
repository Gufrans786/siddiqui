package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class TileRegionCallbackNative implements TileRegionCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileRegionError, TileRegion> expected);

    private TileRegionCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionCallbackPeerCleaner(j));
    }

    private static class TileRegionCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
