package com.mapbox.common;

public interface HttpServiceInterface {
    void cancelRequest(long j, ResultCallback resultCallback);

    void cancelUpload(long j, ResultCallback resultCallback);

    long download(DownloadOptions downloadOptions, DownloadStatusCallback downloadStatusCallback);

    long request(HttpRequest httpRequest, HttpResponseCallback httpResponseCallback);

    void setInterceptor(HttpServiceInterceptorInterface httpServiceInterceptorInterface);

    void setMaxRequestsPerHost(byte b);

    @Deprecated
    boolean supportsKeepCompression();

    long upload(UploadOptions uploadOptions, UploadStatusCallback uploadStatusCallback);
}
