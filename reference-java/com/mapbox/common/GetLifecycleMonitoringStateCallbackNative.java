package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class GetLifecycleMonitoringStateCallbackNative implements GetLifecycleMonitoringStateCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, LifecycleMonitoringState> expected);

    private GetLifecycleMonitoringStateCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new GetLifecycleMonitoringStateCallbackPeerCleaner(j));
    }

    private static class GetLifecycleMonitoringStateCallbackPeerCleaner implements Runnable {
        private long peer;

        public GetLifecycleMonitoringStateCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            GetLifecycleMonitoringStateCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
