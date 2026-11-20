package com.mapbox.common;

public enum EventPriority {
    DEFERRED,
    QUEUED,
    IMMEDIATE;

    private int getValue() {
        return ordinal();
    }
}
