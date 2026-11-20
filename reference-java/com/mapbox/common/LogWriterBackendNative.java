package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class LogWriterBackendNative implements LogWriterBackend {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void writeLog(LoggingLevel loggingLevel, String str);

    public LogWriterBackendNative(long j) {
        this.peer = j;
        CleanerService.register(this, new LogWriterBackendPeerCleaner(j));
    }

    private static class LogWriterBackendPeerCleaner implements Runnable {
        private long peer;

        public LogWriterBackendPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LogWriterBackendNative.cleanNativePeer(this.peer);
        }
    }
}
