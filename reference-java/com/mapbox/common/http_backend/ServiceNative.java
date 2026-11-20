package com.mapbox.common.http_backend;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.ResultCallback;

final class ServiceNative implements Service {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void cancelRequest(long j, ResultCallback resultCallback);

    @Override
    public native long request(Request request, RequestObserver requestObserver);

    @Override
    public native void setMaxRequestsPerHost(byte b);

    @Override
    public native boolean supportsKeepCompression();

    public ServiceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ServicePeerCleaner(j));
    }

    private static class ServicePeerCleaner implements Runnable {
        private long peer;

        public ServicePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ServiceNative.cleanNativePeer(this.peer);
        }
    }
}
