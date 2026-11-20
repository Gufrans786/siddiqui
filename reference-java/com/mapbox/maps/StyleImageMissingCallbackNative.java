package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class StyleImageMissingCallbackNative implements StyleImageMissingCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(StyleImageMissing styleImageMissing);

    private StyleImageMissingCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StyleImageMissingCallbackPeerCleaner(j));
    }

    private static class StyleImageMissingCallbackPeerCleaner implements Runnable {
        private long peer;

        public StyleImageMissingCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StyleImageMissingCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
