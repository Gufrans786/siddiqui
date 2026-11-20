package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import java.util.List;

final class TileRegionsCallbackNative implements TileRegionsCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileRegionError, List<TileRegion>> expected);

    private TileRegionsCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionsCallbackPeerCleaner(j));
    }

    private static class TileRegionsCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionsCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionsCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
