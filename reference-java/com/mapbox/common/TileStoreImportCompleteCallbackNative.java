package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

final class TileStoreImportCompleteCallbackNative implements TileStoreImportCompleteCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileStoreImportError, None> expected);

    private TileStoreImportCompleteCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileStoreImportCompleteCallbackPeerCleaner(j));
    }

    private static class TileStoreImportCompleteCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileStoreImportCompleteCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileStoreImportCompleteCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
