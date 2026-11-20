package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class Version {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native String getCommonSDKRevisionString();

    public static native String getCommonSDKVersionString();

    public static native int getMajorVersion();

    public static native int getMinorVersion();

    public static native int getPatchVersion();

    protected Version(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new VersionPeerCleaner(j));
    }

    private static class VersionPeerCleaner implements Runnable {
        private long peer;

        public VersionPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            Version.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
