package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class NetworkUsageMetricsMeter {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native void onBytesTransferred(String str, int i, int i2);

    public static native void onHttpCodeReceived(int i);

    protected NetworkUsageMetricsMeter(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new NetworkUsageMetricsMeterPeerCleaner(j));
    }

    private static class NetworkUsageMetricsMeterPeerCleaner implements Runnable {
        private long peer;

        public NetworkUsageMetricsMeterPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            NetworkUsageMetricsMeter.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
