package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class StyleImageRemoveUnusedCallbackNative implements StyleImageRemoveUnusedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(StyleImageRemoveUnused styleImageRemoveUnused);

    private StyleImageRemoveUnusedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StyleImageRemoveUnusedCallbackPeerCleaner(j));
    }

    private static class StyleImageRemoveUnusedCallbackPeerCleaner implements Runnable {
        private long peer;

        public StyleImageRemoveUnusedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StyleImageRemoveUnusedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
