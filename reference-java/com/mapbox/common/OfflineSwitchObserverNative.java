package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class OfflineSwitchObserverNative implements OfflineSwitchObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void statusChanged(boolean z);

    public OfflineSwitchObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OfflineSwitchObserverPeerCleaner(j));
    }

    private static class OfflineSwitchObserverPeerCleaner implements Runnable {
        private long peer;

        public OfflineSwitchObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineSwitchObserverNative.cleanNativePeer(this.peer);
        }
    }
}
