package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class AmbientCacheClearingCallbackNative implements AmbientCacheClearingCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<CacheClearingError, Long> expected);

    private AmbientCacheClearingCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new AmbientCacheClearingCallbackPeerCleaner(j));
    }

    private static class AmbientCacheClearingCallbackPeerCleaner implements Runnable {
        private long peer;

        public AmbientCacheClearingCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            AmbientCacheClearingCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
