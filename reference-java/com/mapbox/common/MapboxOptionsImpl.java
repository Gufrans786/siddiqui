package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class MapboxOptionsImpl {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native String getAccessToken();

    public static native String getTokenForService(String str);

    public static native boolean getUseStaging(String str);

    public static native void setAccessToken(String str);

    public static native void setStagingAccessToken(String str);

    public static native void setTokenForService(String str, String str2);

    public static native void setUseStaging(String str, boolean z);

    protected MapboxOptionsImpl(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MapboxOptionsImplPeerCleaner(j));
    }

    private static class MapboxOptionsImplPeerCleaner implements Runnable {
        private long peer;

        public MapboxOptionsImplPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapboxOptionsImpl.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
