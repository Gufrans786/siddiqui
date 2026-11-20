package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class BillingServiceFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native BillingService getInstance();

    public static native void reset();

    protected BillingServiceFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new BillingServiceFactoryPeerCleaner(j));
    }

    private static class BillingServiceFactoryPeerCleaner implements Runnable {
        private long peer;

        public BillingServiceFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            BillingServiceFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
