package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class LifecycleMonitorFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native LifecycleMonitorInterface getOrCreate();

    protected LifecycleMonitorFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new LifecycleMonitorFactoryPeerCleaner(j));
    }

    private static class LifecycleMonitorFactoryPeerCleaner implements Runnable {
        private long peer;

        public LifecycleMonitorFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LifecycleMonitorFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
