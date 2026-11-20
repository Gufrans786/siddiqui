package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class StyleManagerCallbackNative implements StyleManagerCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(StyleManager styleManager);

    private StyleManagerCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StyleManagerCallbackPeerCleaner(j));
    }

    private static class StyleManagerCallbackPeerCleaner implements Runnable {
        private long peer;

        public StyleManagerCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StyleManagerCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
