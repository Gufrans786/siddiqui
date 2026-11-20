package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class CancelableNative implements Cancelable {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void cancel();

    public CancelableNative(long j) {
        this.peer = j;
        CleanerService.register(this, new CancelablePeerCleaner(j));
    }

    private static class CancelablePeerCleaner implements Runnable {
        private long peer;

        public CancelablePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CancelableNative.cleanNativePeer(this.peer);
        }
    }
}
