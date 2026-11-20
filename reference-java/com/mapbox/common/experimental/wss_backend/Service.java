package com.mapbox.common.experimental.wss_backend;

import com.mapbox.common.ResultCallback;

public interface Service {
    void cancelConnection(long j, ResultCallback resultCallback);

    long connect(Request request, RequestObserver requestObserver);

    void setPingTimeout(long j);

    void write(long j, Data data);
}
