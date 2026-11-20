package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import java.util.List;

@Deprecated
final class OfflineDatabaseMergeCallbackNative implements OfflineDatabaseMergeCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, List<OfflineRegion>> expected);

    private OfflineDatabaseMergeCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OfflineDatabaseMergeCallbackPeerCleaner(j));
    }

    private static class OfflineDatabaseMergeCallbackPeerCleaner implements Runnable {
        private long peer;

        public OfflineDatabaseMergeCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineDatabaseMergeCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
