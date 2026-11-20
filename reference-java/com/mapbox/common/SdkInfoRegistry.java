package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import java.util.List;

public final class SdkInfoRegistry implements SdkInfoRegistryInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native List<SdkInformation> getSdkInformation();

    @Override
    public native void registerSdkInformation(SdkInformation sdkInformation);

    protected SdkInfoRegistry(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new SdkInfoRegistryPeerCleaner(j));
    }

    private static class SdkInfoRegistryPeerCleaner implements Runnable {
        private long peer;

        public SdkInfoRegistryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SdkInfoRegistry.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
