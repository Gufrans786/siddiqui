package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class HttpResponseCallbackNative implements HttpResponseCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(HttpResponse httpResponse);

    private HttpResponseCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new HttpResponseCallbackPeerCleaner(j));
    }

    private static class HttpResponseCallbackPeerCleaner implements Runnable {
        private long peer;

        public HttpResponseCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            HttpResponseCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
