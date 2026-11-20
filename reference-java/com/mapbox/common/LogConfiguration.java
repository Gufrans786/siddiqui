package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class LogConfiguration {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native LoggingLevel getLoggingLevel();

    public static native LoggingLevel getLoggingLevel(String str);

    public static native void registerLogWriterBackend(LogWriterBackend logWriterBackend);

    public static native void resetLoggingLevel(String str);

    public static native void setLoggingLevel(LoggingLevel loggingLevel);

    public static native void setLoggingLevel(String str, LoggingLevel loggingLevel);

    protected LogConfiguration(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new LogConfigurationPeerCleaner(j));
    }

    private static class LogConfigurationPeerCleaner implements Runnable {
        private long peer;

        public LogConfigurationPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LogConfiguration.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
