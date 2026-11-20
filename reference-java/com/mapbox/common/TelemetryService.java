package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class TelemetryService {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native TelemetryService getOrCreate();

    public native void flush(FlushOperationResultCallback flushOperationResultCallback);

    protected TelemetryService(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new TelemetryServicePeerCleaner(j));
    }

    private static class TelemetryServicePeerCleaner implements Runnable {
        private long peer;

        public TelemetryServicePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TelemetryService.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
