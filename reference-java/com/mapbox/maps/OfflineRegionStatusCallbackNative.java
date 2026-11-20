package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

@Deprecated
final class OfflineRegionStatusCallbackNative implements OfflineRegionStatusCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, OfflineRegionStatus> expected);

    private OfflineRegionStatusCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OfflineRegionStatusCallbackPeerCleaner(j));
    }

    private static class OfflineRegionStatusCallbackPeerCleaner implements Runnable {
        private long peer;

        public OfflineRegionStatusCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineRegionStatusCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
