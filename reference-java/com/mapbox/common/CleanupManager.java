package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class CleanupManager {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native void cleanup();

    protected CleanupManager(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new CleanupManagerPeerCleaner(j));
    }

    private static class CleanupManagerPeerCleaner implements Runnable {
        private long peer;

        public CleanupManagerPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CleanupManager.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
