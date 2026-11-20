package com.mapbox.common.experimental;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.LoggingLevel;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;

public final class PersistentLogConfiguration {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native boolean getFileAllowHeader();

    public static native Long getFileFlushBufferSize();

    public static native LoggingLevel getFileFlushImmediateFromLogLevel();

    public static native Long getFileFlushLines();

    public static native Long getFileFlushSeconds();

    public static native LoggingLevel getFileLoggingLevel();

    public static native LoggingLevel getFileLoggingLevelForCategory(String str);

    public static native long getFileMaxSize();

    public static native String getFilePath();

    public static native boolean getFilePerCategory();

    public static native long getFileRotateCount();

    public static native void resetFileLoggingLevelForCategory(String str);

    public static native void setFileAllowHeader(boolean z);

    public static native void setFileFlushConfig(Long l, Long l2, Long l3, LoggingLevel loggingLevel);

    public static native void setFileLoggingLevel(LoggingLevel loggingLevel);

    public static native void setFileLoggingLevelForCategory(String str, LoggingLevel loggingLevel);

    public static native void setFileMaxSize(long j);

    public static native void setFilePath(String str);

    public static native void setFilePerCategory(boolean z);

    public static native void setFileRotateCount(long j);

    protected PersistentLogConfiguration(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new PersistentLogConfigurationPeerCleaner(j));
    }

    private static class PersistentLogConfigurationPeerCleaner implements Runnable {
        private long peer;

        public PersistentLogConfigurationPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            PersistentLogConfiguration.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
