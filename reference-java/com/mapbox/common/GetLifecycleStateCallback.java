package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface GetLifecycleStateCallback {
    void run(Expected<String, LifecycleState> expected);
}
