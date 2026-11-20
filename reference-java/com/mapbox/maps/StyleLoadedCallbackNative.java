package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class StyleLoadedCallbackNative implements StyleLoadedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(StyleLoaded styleLoaded);

    private StyleLoadedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StyleLoadedCallbackPeerCleaner(j));
    }

    private static class StyleLoadedCallbackPeerCleaner implements Runnable {
        private long peer;

        public StyleLoadedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StyleLoadedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
