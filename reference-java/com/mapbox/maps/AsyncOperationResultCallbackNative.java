package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

final class AsyncOperationResultCallbackNative implements AsyncOperationResultCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, None> expected);

    private AsyncOperationResultCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new AsyncOperationResultCallbackPeerCleaner(j));
    }

    private static class AsyncOperationResultCallbackPeerCleaner implements Runnable {
        private long peer;

        public AsyncOperationResultCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            AsyncOperationResultCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
