package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class MemoryMonitorFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native MemoryMonitorInterface getOrCreate();

    public static native void reset();

    public static native void setUserDefined(MemoryMonitorInterface memoryMonitorInterface);

    protected MemoryMonitorFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MemoryMonitorFactoryPeerCleaner(j));
    }

    private static class MemoryMonitorFactoryPeerCleaner implements Runnable {
        private long peer;

        public MemoryMonitorFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MemoryMonitorFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
