package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class BatteryMonitorFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native BatteryMonitorInterface getOrCreate();

    public static native void reset();

    public static native void setUserDefined(BatteryMonitorInterface batteryMonitorInterface);

    protected BatteryMonitorFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new BatteryMonitorFactoryPeerCleaner(j));
    }

    private static class BatteryMonitorFactoryPeerCleaner implements Runnable {
        private long peer;

        public BatteryMonitorFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            BatteryMonitorFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
