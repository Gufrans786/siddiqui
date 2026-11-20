package com.mapbox.common;

public interface MemoryMonitorObserver {
    void onMemoryMonitorAlert(MemoryMonitorStatus memoryMonitorStatus);
}
