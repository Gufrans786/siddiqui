package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class TelemetryCollectionStateObserverNative implements TelemetryCollectionStateObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onStateChanged(TelemetryCollectionState telemetryCollectionState);

    public TelemetryCollectionStateObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TelemetryCollectionStateObserverPeerCleaner(j));
    }

    private static class TelemetryCollectionStateObserverPeerCleaner implements Runnable {
        private long peer;

        public TelemetryCollectionStateObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TelemetryCollectionStateObserverNative.cleanNativePeer(this.peer);
        }
    }
}
