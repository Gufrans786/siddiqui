package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class TileRegionLoadProgressCallbackNative implements TileRegionLoadProgressCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(TileRegionLoadProgress tileRegionLoadProgress);

    private TileRegionLoadProgressCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionLoadProgressCallbackPeerCleaner(j));
    }

    private static class TileRegionLoadProgressCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionLoadProgressCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionLoadProgressCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
