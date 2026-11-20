package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class TelemetryUtils {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native TelemetryCollectionState getClientServerEventsCollectionState();

    public static native boolean getEventsCollectionState();

    public static native String getUserID();

    private native void initialize();

    public static native void setEventsCollectionState(boolean z, TelemetryUtilsResponseCallback telemetryUtilsResponseCallback);

    public native void registerTelemetryCollectionStateObserver(TelemetryCollectionStateObserver telemetryCollectionStateObserver);

    public native void unregisterTelemetryCollectionStateObserver(TelemetryCollectionStateObserver telemetryCollectionStateObserver);

    public TelemetryUtils() {
        initialize();
    }

    protected TelemetryUtils(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new TelemetryUtilsPeerCleaner(j));
    }

    private static class TelemetryUtilsPeerCleaner implements Runnable {
        private long peer;

        public TelemetryUtilsPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TelemetryUtils.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
