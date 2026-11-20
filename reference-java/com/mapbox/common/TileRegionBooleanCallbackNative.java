package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class TileRegionBooleanCallbackNative implements TileRegionBooleanCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileRegionError, Boolean> expected);

    private TileRegionBooleanCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionBooleanCallbackPeerCleaner(j));
    }

    private static class TileRegionBooleanCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionBooleanCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionBooleanCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
