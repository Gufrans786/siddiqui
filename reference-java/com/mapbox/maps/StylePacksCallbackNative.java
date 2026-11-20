package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import java.util.List;

final class StylePacksCallbackNative implements StylePacksCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<StylePackError, List<StylePack>> expected);

    private StylePacksCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new StylePacksCallbackPeerCleaner(j));
    }

    private static class StylePacksCallbackPeerCleaner implements Runnable {
        private long peer;

        public StylePacksCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            StylePacksCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
