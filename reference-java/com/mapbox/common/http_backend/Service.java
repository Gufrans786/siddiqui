package com.mapbox.common.http_backend;

import com.mapbox.common.ResultCallback;

public interface Service {
    void cancelRequest(long j, ResultCallback resultCallback);

    long request(Request request, RequestObserver requestObserver);

    void setMaxRequestsPerHost(byte b);

    boolean supportsKeepCompression();
}
