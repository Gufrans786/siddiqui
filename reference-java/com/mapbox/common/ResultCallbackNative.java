package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class ResultCallbackNative implements ResultCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(boolean z);

    private ResultCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ResultCallbackPeerCleaner(j));
    }

    private static class ResultCallbackPeerCleaner implements Runnable {
        private long peer;

        public ResultCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ResultCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
