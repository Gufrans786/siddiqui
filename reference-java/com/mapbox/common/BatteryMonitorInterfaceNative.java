package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class BatteryMonitorInterfaceNative implements BatteryMonitorInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void getBatteryChargingStatus(BatteryChargingStatusCallback batteryChargingStatusCallback);

    @Override
    public native void registerObserver(BatteryMonitorObserver batteryMonitorObserver);

    @Override
    public native void unregisterObserver(BatteryMonitorObserver batteryMonitorObserver);

    public BatteryMonitorInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new BatteryMonitorInterfacePeerCleaner(j));
    }

    private static class BatteryMonitorInterfacePeerCleaner implements Runnable {
        private long peer;

        public BatteryMonitorInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            BatteryMonitorInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
