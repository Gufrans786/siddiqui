package com.mapbox.common;

public interface ReachabilityChanged {
    void run(NetworkStatus networkStatus);
}
