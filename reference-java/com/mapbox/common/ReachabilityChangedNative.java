package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class ReachabilityChangedNative implements ReachabilityChanged {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(NetworkStatus networkStatus);

    private ReachabilityChangedNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ReachabilityChangedPeerCleaner(j));
    }

    private static class ReachabilityChangedPeerCleaner implements Runnable {
        private long peer;

        public ReachabilityChangedPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ReachabilityChangedNative.cleanNativePeer(this.peer);
        }
    }
}
