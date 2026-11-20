package com.mapbox.common;

public interface LifecycleObserver {
    void onLifecycleStateChanged(LifecycleState lifecycleState);

    void onMonitoringStateChanged(LifecycleMonitoringState lifecycleMonitoringState, String str);
}
