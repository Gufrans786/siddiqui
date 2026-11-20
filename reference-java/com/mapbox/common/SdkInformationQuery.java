package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import java.util.List;

public final class SdkInformationQuery implements SdkInformationQueryInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native List<SdkInformation> getSdkInformation();

    public static native SdkInformation getSdkInformationByName(String str);

    protected SdkInformationQuery(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new SdkInformationQueryPeerCleaner(j));
    }

    private static class SdkInformationQueryPeerCleaner implements Runnable {
        private long peer;

        public SdkInformationQueryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SdkInformationQuery.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
