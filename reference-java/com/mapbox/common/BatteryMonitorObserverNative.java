package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class BatteryMonitorObserverNative implements BatteryMonitorObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onBatteryChargingStatusChanged(boolean z);

    @Override
    public native void onBatteryStatusError(String str);

    public BatteryMonitorObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new BatteryMonitorObserverPeerCleaner(j));
    }

    private static class BatteryMonitorObserverPeerCleaner implements Runnable {
        private long peer;

        public BatteryMonitorObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            BatteryMonitorObserverNative.cleanNativePeer(this.peer);
        }
    }
}
