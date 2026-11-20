package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class MovementInfoCallbackNative implements MovementInfoCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, MovementInfo> expected);

    private MovementInfoCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MovementInfoCallbackPeerCleaner(j));
    }

    private static class MovementInfoCallbackPeerCleaner implements Runnable {
        private long peer;

        public MovementInfoCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MovementInfoCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
