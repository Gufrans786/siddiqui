package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public class SchedulerFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native Scheduler createSequenced();

    public static native Scheduler createSequenced(ThreadServiceType threadServiceType);

    public static native Scheduler createSingleThreaded();

    public static native Scheduler createSingleThreaded(ThreadServiceType threadServiceType);

    public static native Scheduler threadPool();

    public static native Scheduler threadPool(ThreadServiceType threadServiceType);

    protected SchedulerFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new SchedulerFactoryPeerCleaner(j));
    }

    private static class SchedulerFactoryPeerCleaner implements Runnable {
        private long peer;

        public SchedulerFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SchedulerFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
