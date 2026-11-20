package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class StyleDataLoadedCallbackNative implements StyleDataLoadedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(StyleDataLoaded styleDataLoaded);

    private StyleDataLoadedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StyleDataLoadedCallbackPeerCleaner(j));
    }

    private static class StyleDataLoadedCallbackPeerCleaner implements Runnable {
        private long peer;

        public StyleDataLoadedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StyleDataLoadedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
