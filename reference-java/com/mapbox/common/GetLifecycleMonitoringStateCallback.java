package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface GetLifecycleMonitoringStateCallback {
    void run(Expected<String, LifecycleMonitoringState> expected);
}
