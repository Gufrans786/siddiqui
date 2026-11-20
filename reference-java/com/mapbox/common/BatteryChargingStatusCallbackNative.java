package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class BatteryChargingStatusCallbackNative implements BatteryChargingStatusCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, Boolean> expected);

    private BatteryChargingStatusCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new BatteryChargingStatusCallbackPeerCleaner(j));
    }

    private static class BatteryChargingStatusCallbackPeerCleaner implements Runnable {
        private long peer;

        public BatteryChargingStatusCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            BatteryChargingStatusCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
