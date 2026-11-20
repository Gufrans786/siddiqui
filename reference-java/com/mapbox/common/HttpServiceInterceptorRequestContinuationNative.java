package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class HttpServiceInterceptorRequestContinuationNative implements HttpServiceInterceptorRequestContinuation {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(HttpRequestOrResponse httpRequestOrResponse);

    private HttpServiceInterceptorRequestContinuationNative(long j) {
        this.peer = j;
        CleanerService.register(this, new HttpServiceInterceptorRequestContinuationPeerCleaner(j));
    }

    private static class HttpServiceInterceptorRequestContinuationPeerCleaner implements Runnable {
        private long peer;

        public HttpServiceInterceptorRequestContinuationPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            HttpServiceInterceptorRequestContinuationNative.cleanNativePeer(this.peer);
        }
    }
}
