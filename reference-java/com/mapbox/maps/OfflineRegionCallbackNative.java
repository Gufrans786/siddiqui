package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import java.util.List;

@Deprecated
final class OfflineRegionCallbackNative implements OfflineRegionCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, List<OfflineRegion>> expected);

    private OfflineRegionCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OfflineRegionCallbackPeerCleaner(j));
    }

    private static class OfflineRegionCallbackPeerCleaner implements Runnable {
        private long peer;

        public OfflineRegionCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineRegionCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
