package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class MetricsServiceFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native MetricsService getInstance();

    public static native MetricsService getInstanceForLogging();

    public static native void reset();

    protected MetricsServiceFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MetricsServiceFactoryPeerCleaner(j));
    }

    private static class MetricsServiceFactoryPeerCleaner implements Runnable {
        private long peer;

        public MetricsServiceFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MetricsServiceFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
