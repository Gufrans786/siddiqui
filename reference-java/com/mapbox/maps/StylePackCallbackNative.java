package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class StylePackCallbackNative implements StylePackCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<StylePackError, StylePack> expected);

    private StylePackCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StylePackCallbackPeerCleaner(j));
    }

    private static class StylePackCallbackPeerCleaner implements Runnable {
        private long peer;

        public StylePackCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StylePackCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
