package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

final class FlushOperationResultCallbackNative implements FlushOperationResultCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, None> expected);

    private FlushOperationResultCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new FlushOperationResultCallbackPeerCleaner(j));
    }

    private static class FlushOperationResultCallbackPeerCleaner implements Runnable {
        private long peer;

        public FlushOperationResultCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            FlushOperationResultCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
