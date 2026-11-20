package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class HttpServiceInterceptorResponseContinuationNative implements HttpServiceInterceptorResponseContinuation {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(HttpResponse httpResponse);

    private HttpServiceInterceptorResponseContinuationNative(long j) {
        this.peer = j;
        CleanerService.register(this, new HttpServiceInterceptorResponseContinuationPeerCleaner(j));
    }

    private static class HttpServiceInterceptorResponseContinuationPeerCleaner implements Runnable {
        private long peer;

        public HttpServiceInterceptorResponseContinuationPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            HttpServiceInterceptorResponseContinuationNative.cleanNativePeer(this.peer);
        }
    }
}
