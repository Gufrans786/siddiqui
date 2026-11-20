package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

final class StylePackMetadataCallbackNative implements StylePackMetadataCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<StylePackError, Value> expected);

    private StylePackMetadataCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StylePackMetadataCallbackPeerCleaner(j));
    }

    private static class StylePackMetadataCallbackPeerCleaner implements Runnable {
        private long peer;

        public StylePackMetadataCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StylePackMetadataCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
