package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

final class TilesetDescriptorValueCallbackNative implements TilesetDescriptorValueCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, Value> expected);

    private TilesetDescriptorValueCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TilesetDescriptorValueCallbackPeerCleaner(j));
    }

    private static class TilesetDescriptorValueCallbackPeerCleaner implements Runnable {
        private long peer;

        public TilesetDescriptorValueCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TilesetDescriptorValueCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
