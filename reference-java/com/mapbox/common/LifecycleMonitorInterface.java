package com.mapbox.common;

public interface LifecycleMonitorInterface {
    void getLifecycleState(GetLifecycleStateCallback getLifecycleStateCallback);

    void getMonitoringState(GetLifecycleMonitoringStateCallback getLifecycleMonitoringStateCallback);

    void registerObserver(LifecycleObserver lifecycleObserver);

    void unregisterObserver(LifecycleObserver lifecycleObserver);
}
