package com.mapbox.common;

public interface HttpServiceCancellationCallback {
    void run(long j, HttpRequest httpRequest);
}
