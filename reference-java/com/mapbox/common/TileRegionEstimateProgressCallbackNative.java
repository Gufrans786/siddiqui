package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class TileRegionEstimateProgressCallbackNative implements TileRegionEstimateProgressCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(TileRegionEstimateProgress tileRegionEstimateProgress);

    private TileRegionEstimateProgressCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionEstimateProgressCallbackPeerCleaner(j));
    }

    private static class TileRegionEstimateProgressCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionEstimateProgressCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionEstimateProgressCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
