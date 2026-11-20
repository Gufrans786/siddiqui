package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class MemoryMonitorObserverNative implements MemoryMonitorObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onMemoryMonitorAlert(MemoryMonitorStatus memoryMonitorStatus);

    public MemoryMonitorObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MemoryMonitorObserverPeerCleaner(j));
    }

    private static class MemoryMonitorObserverPeerCleaner implements Runnable {
        private long peer;

        public MemoryMonitorObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MemoryMonitorObserverNative.cleanNativePeer(this.peer);
        }
    }
}
