package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class HttpServiceCancellationCallbackNative implements HttpServiceCancellationCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(long j, HttpRequest httpRequest);

    private HttpServiceCancellationCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new HttpServiceCancellationCallbackPeerCleaner(j));
    }

    private static class HttpServiceCancellationCallbackPeerCleaner implements Runnable {
        private long peer;

        public HttpServiceCancellationCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            HttpServiceCancellationCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
