package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

@Deprecated
final class OfflineRegionCreateCallbackNative implements OfflineRegionCreateCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, OfflineRegion> expected);

    private OfflineRegionCreateCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OfflineRegionCreateCallbackPeerCleaner(j));
    }

    private static class OfflineRegionCreateCallbackPeerCleaner implements Runnable {
        private long peer;

        public OfflineRegionCreateCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineRegionCreateCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
