package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

final class TelemetryUtilsResponseCallbackNative implements TelemetryUtilsResponseCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<EventsServiceError, None> expected);

    private TelemetryUtilsResponseCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TelemetryUtilsResponseCallbackPeerCleaner(j));
    }

    private static class TelemetryUtilsResponseCallbackPeerCleaner implements Runnable {
        private long peer;

        public TelemetryUtilsResponseCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TelemetryUtilsResponseCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
