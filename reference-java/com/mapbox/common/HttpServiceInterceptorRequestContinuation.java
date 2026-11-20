package com.mapbox.common;

public interface HttpServiceInterceptorRequestContinuation {
    void run(HttpRequestOrResponse httpRequestOrResponse);
}
