package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class TileStoreImportProgressCallbackNative implements TileStoreImportProgressCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(TileStoreImportProgress tileStoreImportProgress);

    private TileStoreImportProgressCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileStoreImportProgressCallbackPeerCleaner(j));
    }

    private static class TileStoreImportProgressCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileStoreImportProgressCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileStoreImportProgressCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
