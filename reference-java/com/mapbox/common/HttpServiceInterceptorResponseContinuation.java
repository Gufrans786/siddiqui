package com.mapbox.common;

public interface HttpServiceInterceptorResponseContinuation {
    void run(HttpResponse httpResponse);
}
