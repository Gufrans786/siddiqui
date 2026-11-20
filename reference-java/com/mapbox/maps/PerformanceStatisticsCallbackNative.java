package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class PerformanceStatisticsCallbackNative implements PerformanceStatisticsCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(PerformanceStatistics performanceStatistics);

    private PerformanceStatisticsCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new PerformanceStatisticsCallbackPeerCleaner(j));
    }

    private static class PerformanceStatisticsCallbackPeerCleaner implements Runnable {
        private long peer;

        public PerformanceStatisticsCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            PerformanceStatisticsCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
