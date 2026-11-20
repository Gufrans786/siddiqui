package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class DownloadStatusCallbackNative implements DownloadStatusCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(DownloadStatus downloadStatus);

    private DownloadStatusCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new DownloadStatusCallbackPeerCleaner(j));
    }

    private static class DownloadStatusCallbackPeerCleaner implements Runnable {
        private long peer;

        public DownloadStatusCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            DownloadStatusCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
