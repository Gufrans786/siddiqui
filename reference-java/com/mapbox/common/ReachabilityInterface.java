package com.mapbox.common;

public interface ReachabilityInterface {
    long addListener(ReachabilityChanged reachabilityChanged);

    NetworkStatus currentNetworkStatus();

    boolean isReachable();

    boolean removeListener(long j);
}
