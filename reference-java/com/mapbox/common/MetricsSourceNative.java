package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import java.util.List;

final class MetricsSourceNative implements MetricsSource {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native List<Metrics> getMetrics();

    public MetricsSourceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MetricsSourcePeerCleaner(j));
    }

    private static class MetricsSourcePeerCleaner implements Runnable {
        private long peer;

        public MetricsSourcePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MetricsSourceNative.cleanNativePeer(this.peer);
        }
    }
}
