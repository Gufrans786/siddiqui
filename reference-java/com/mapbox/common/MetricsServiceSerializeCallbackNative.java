package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Value;

final class MetricsServiceSerializeCallbackNative implements MetricsServiceSerializeCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Value value);

    private MetricsServiceSerializeCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MetricsServiceSerializeCallbackPeerCleaner(j));
    }

    private static class MetricsServiceSerializeCallbackPeerCleaner implements Runnable {
        private long peer;

        public MetricsServiceSerializeCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MetricsServiceSerializeCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
