package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class GetLifecycleStateCallbackNative implements GetLifecycleStateCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, LifecycleState> expected);

    private GetLifecycleStateCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new GetLifecycleStateCallbackPeerCleaner(j));
    }

    private static class GetLifecycleStateCallbackPeerCleaner implements Runnable {
        private long peer;

        public GetLifecycleStateCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            GetLifecycleStateCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
