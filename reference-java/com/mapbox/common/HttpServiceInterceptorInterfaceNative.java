package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class HttpServiceInterceptorInterfaceNative implements HttpServiceInterceptorInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onRequest(HttpRequest httpRequest, HttpServiceInterceptorRequestContinuation httpServiceInterceptorRequestContinuation);

    @Override
    public native void onResponse(HttpResponse httpResponse, HttpServiceInterceptorResponseContinuation httpServiceInterceptorResponseContinuation);

    public HttpServiceInterceptorInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new HttpServiceInterceptorInterfacePeerCleaner(j));
    }

    private static class HttpServiceInterceptorInterfacePeerCleaner implements Runnable {
        private long peer;

        public HttpServiceInterceptorInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            HttpServiceInterceptorInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
