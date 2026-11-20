package com.mapbox.common;

public interface HttpServiceInterceptorInterface {
    void onRequest(HttpRequest httpRequest, HttpServiceInterceptorRequestContinuation httpServiceInterceptorRequestContinuation);

    void onResponse(HttpResponse httpResponse, HttpServiceInterceptorResponseContinuation httpServiceInterceptorResponseContinuation);
}
