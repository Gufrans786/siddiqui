package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class UploadStatusCallbackNative implements UploadStatusCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(UploadStatus uploadStatus);

    private UploadStatusCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new UploadStatusCallbackPeerCleaner(j));
    }

    private static class UploadStatusCallbackPeerCleaner implements Runnable {
        private long peer;

        public UploadStatusCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            UploadStatusCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
