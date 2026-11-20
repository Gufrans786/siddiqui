package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class TileFunctionCallbackNative implements TileFunctionCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(CanonicalTileID canonicalTileID);

    private TileFunctionCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileFunctionCallbackPeerCleaner(j));
    }

    private static class TileFunctionCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileFunctionCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileFunctionCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
