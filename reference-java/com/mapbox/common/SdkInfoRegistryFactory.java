package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class SdkInfoRegistryFactory implements SdkInfoRegistryFactoryInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native SdkInfoRegistry getInstance();

    public static native void reset();

    protected SdkInfoRegistryFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new SdkInfoRegistryFactoryPeerCleaner(j));
    }

    private static class SdkInfoRegistryFactoryPeerCleaner implements Runnable {
        private long peer;

        public SdkInfoRegistryFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SdkInfoRegistryFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
