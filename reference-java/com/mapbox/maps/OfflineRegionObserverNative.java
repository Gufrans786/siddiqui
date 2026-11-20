package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

@Deprecated
final class OfflineRegionObserverNative implements OfflineRegionObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void errorOccurred(OfflineRegionError offlineRegionError);

    @Override
    public native void statusChanged(OfflineRegionStatus offlineRegionStatus);

    public OfflineRegionObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OfflineRegionObserverPeerCleaner(j));
    }

    private static class OfflineRegionObserverPeerCleaner implements Runnable {
        private long peer;

        public OfflineRegionObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineRegionObserverNative.cleanNativePeer(this.peer);
        }
    }
}
