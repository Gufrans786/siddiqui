package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

class Log {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native void debug(String str, String str2);

    public static native void error(String str, String str2);

    public static native void info(String str, String str2);

    public static native void warning(String str, String str2);

    protected Log(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new LogPeerCleaner(j));
    }

    private static class LogPeerCleaner implements Runnable {
        private long peer;

        public LogPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            Log.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
