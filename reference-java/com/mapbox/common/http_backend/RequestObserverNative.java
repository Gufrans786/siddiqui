package com.mapbox.common.http_backend;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.HttpRequestError;

final class RequestObserverNative implements RequestObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onData(long j);

    @Override
    public native void onFailed(long j, HttpRequestError httpRequestError);

    @Override
    public native void onResponse(long j, ResponseData responseData);

    @Override
    public native void onSucceeded(long j);

    public RequestObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new RequestObserverPeerCleaner(j));
    }

    private static class RequestObserverPeerCleaner implements Runnable {
        private long peer;

        public RequestObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            RequestObserverNative.cleanNativePeer(this.peer);
        }
    }
}
