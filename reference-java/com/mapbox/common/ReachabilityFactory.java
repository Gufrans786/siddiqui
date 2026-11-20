package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public class ReachabilityFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native ReachabilityInterface reachability(String str);

    public static native void reset();

    protected ReachabilityFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new ReachabilityFactoryPeerCleaner(j));
    }

    private static class ReachabilityFactoryPeerCleaner implements Runnable {
        private long peer;

        public ReachabilityFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ReachabilityFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
