package com.mapbox.common;

public enum SchedulerType {
    PARALLEL,
    SEQUENTIAL;

    private int getValue() {
        return ordinal();
    }
}
