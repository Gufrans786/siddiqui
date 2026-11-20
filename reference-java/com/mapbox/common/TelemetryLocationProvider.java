package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.location.DeviceLocationProvider;

public final class TelemetryLocationProvider {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native DeviceLocationProvider getDeviceLocationProvider();

    public static native void setDeviceLocationProvider(DeviceLocationProvider deviceLocationProvider);

    protected TelemetryLocationProvider(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new TelemetryLocationProviderPeerCleaner(j));
    }

    private static class TelemetryLocationProviderPeerCleaner implements Runnable {
        private long peer;

        public TelemetryLocationProviderPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TelemetryLocationProvider.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
