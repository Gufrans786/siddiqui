package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface MemoryMonitorStatusCallback {
    void run(Expected<String, MemoryMonitorStatus> expected);
}
