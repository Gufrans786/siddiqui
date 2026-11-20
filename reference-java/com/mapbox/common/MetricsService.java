package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public class MetricsService {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native void addMetricsSource(MetricsSource metricsSource);

    public native void flush(FlushOperationResultCallback flushOperationResultCallback);

    public native void removeMetricsSource(MetricsSource metricsSource);

    public native void serialize(MetricsServiceSerializeCallback metricsServiceSerializeCallback);

    public native void serializePretty(MetricsServiceSerializeCallback metricsServiceSerializeCallback);

    public native void setTag(String str);

    public native void start(Long l);

    public native void stop();

    public native void subscribeToConfigUpdates();

    protected MetricsService(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MetricsServicePeerCleaner(j));
    }

    private static class MetricsServicePeerCleaner implements Runnable {
        private long peer;

        public MetricsServicePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MetricsService.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
