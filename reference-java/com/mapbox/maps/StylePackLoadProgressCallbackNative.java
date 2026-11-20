package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class StylePackLoadProgressCallbackNative implements StylePackLoadProgressCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(StylePackLoadProgress stylePackLoadProgress);

    private StylePackLoadProgressCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StylePackLoadProgressCallbackPeerCleaner(j));
    }

    private static class StylePackLoadProgressCallbackPeerCleaner implements Runnable {
        private long peer;

        public StylePackLoadProgressCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StylePackLoadProgressCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
