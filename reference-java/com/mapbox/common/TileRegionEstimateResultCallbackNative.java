package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class TileRegionEstimateResultCallbackNative implements TileRegionEstimateResultCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileRegionError, TileRegionEstimateResult> expected);

    private TileRegionEstimateResultCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionEstimateResultCallbackPeerCleaner(j));
    }

    private static class TileRegionEstimateResultCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionEstimateResultCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionEstimateResultCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
