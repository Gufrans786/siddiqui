package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class HttpServiceInterfaceNative implements HttpServiceInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void cancelRequest(long j, ResultCallback resultCallback);

    @Override
    public native void cancelUpload(long j, ResultCallback resultCallback);

    @Override
    public native long download(DownloadOptions downloadOptions, DownloadStatusCallback downloadStatusCallback);

    @Override
    public native long request(HttpRequest httpRequest, HttpResponseCallback httpResponseCallback);

    @Override
    public native void setInterceptor(HttpServiceInterceptorInterface httpServiceInterceptorInterface);

    @Override
    public native void setMaxRequestsPerHost(byte b);

    @Override
    @Deprecated
    public native boolean supportsKeepCompression();

    @Override
    public native long upload(UploadOptions uploadOptions, UploadStatusCallback uploadStatusCallback);

    public HttpServiceInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new HttpServiceInterfacePeerCleaner(j));
    }

    private static class HttpServiceInterfacePeerCleaner implements Runnable {
        private long peer;

        public HttpServiceInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            HttpServiceInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
