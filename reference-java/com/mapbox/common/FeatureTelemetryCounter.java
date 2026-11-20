package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class FeatureTelemetryCounter {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native FeatureTelemetryCounter create(String str);

    public native String getName();

    public native int getValue();

    public native void increment();

    public native void reset();

    protected FeatureTelemetryCounter(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new FeatureTelemetryCounterPeerCleaner(j));
    }

    private static class FeatureTelemetryCounterPeerCleaner implements Runnable {
        private long peer;

        public FeatureTelemetryCounterPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            FeatureTelemetryCounter.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
