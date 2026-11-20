package com.mapbox.common;

public enum MemoryMonitorState {
    OK("Ok"),
    APP_RUNNING_IN_BACKGROUND("AppRunningInBackground"),
    MEMORY_THRESHOLD_REACHED("MemoryThresholdReached"),
    SYSTEM_MEMORY_WARNING_RECEIVED("SystemMemoryWarningReceived");

    private String str;

    MemoryMonitorState(String str) {
        this.str = str;
    }

    @Override
    public String toString() {
        return this.str;
    }

    private int getValue() {
        return ordinal();
    }
}
