package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class SnapshotCompleteCallbackNative implements SnapshotCompleteCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, MapSnapshot> expected);

    private SnapshotCompleteCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new SnapshotCompleteCallbackPeerCleaner(j));
    }

    private static class SnapshotCompleteCallbackPeerCleaner implements Runnable {
        private long peer;

        public SnapshotCompleteCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SnapshotCompleteCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
