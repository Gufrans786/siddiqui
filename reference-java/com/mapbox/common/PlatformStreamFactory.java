package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public class PlatformStreamFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native ReadStream fileReadStream(String str);

    public static native ReadStream memoryReadStream(String str);

    protected PlatformStreamFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new PlatformStreamFactoryPeerCleaner(j));
    }

    private static class PlatformStreamFactoryPeerCleaner implements Runnable {
        private long peer;

        public PlatformStreamFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            PlatformStreamFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
