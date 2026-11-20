package com.mapbox.common.http_backend;

import com.mapbox.common.HttpRequestError;

public interface RequestObserver {
    void onData(long j);

    void onFailed(long j, HttpRequestError httpRequestError);

    void onResponse(long j, ResponseData responseData);

    void onSucceeded(long j);
}
