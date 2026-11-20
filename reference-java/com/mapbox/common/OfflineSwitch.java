package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public class OfflineSwitch {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native OfflineSwitch getInstance();

    public static native void reset();

    public native boolean isMapboxStackConnected();

    public native void registerObserver(OfflineSwitchObserver offlineSwitchObserver);

    public native void setMapboxStackConnected(boolean z);

    public native void unregisterObserver(OfflineSwitchObserver offlineSwitchObserver);

    protected OfflineSwitch(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new OfflineSwitchPeerCleaner(j));
    }

    private static class OfflineSwitchPeerCleaner implements Runnable {
        private long peer;

        public OfflineSwitchPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineSwitch.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
