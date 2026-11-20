package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class MemoryMonitorStatusCallbackNative implements MemoryMonitorStatusCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, MemoryMonitorStatus> expected);

    private MemoryMonitorStatusCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MemoryMonitorStatusCallbackPeerCleaner(j));
    }

    private static class MemoryMonitorStatusCallbackPeerCleaner implements Runnable {
        private long peer;

        public MemoryMonitorStatusCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MemoryMonitorStatusCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
