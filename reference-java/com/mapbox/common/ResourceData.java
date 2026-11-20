package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.DataRef;

public class ResourceData {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native DataRef getData();

    protected ResourceData(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new ResourceDataPeerCleaner(j));
    }

    private static class ResourceDataPeerCleaner implements Runnable {
        private long peer;

        public ResourceDataPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ResourceData.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
