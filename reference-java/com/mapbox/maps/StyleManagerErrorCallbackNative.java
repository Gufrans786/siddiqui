package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class StyleManagerErrorCallbackNative implements StyleManagerErrorCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(StyleManager styleManager, MapLoadingError mapLoadingError);

    private StyleManagerErrorCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StyleManagerErrorCallbackPeerCleaner(j));
    }

    private static class StyleManagerErrorCallbackPeerCleaner implements Runnable {
        private long peer;

        public StyleManagerErrorCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StyleManagerErrorCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
