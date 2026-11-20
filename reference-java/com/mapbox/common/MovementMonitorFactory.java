package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class MovementMonitorFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native MovementMonitorInterface getOrCreate();

    public static native void reset();

    public static native void setUserDefined(MovementMonitorInterface movementMonitorInterface);

    protected MovementMonitorFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MovementMonitorFactoryPeerCleaner(j));
    }

    private static class MovementMonitorFactoryPeerCleaner implements Runnable {
        private long peer;

        public MovementMonitorFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MovementMonitorFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
