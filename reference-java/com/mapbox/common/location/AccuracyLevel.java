package com.mapbox.common.location;

public enum AccuracyLevel {
    PASSIVE,
    LOW,
    MEDIUM,
    HIGH,
    HIGHEST;

    private int getValue() {
        return ordinal();
    }
}
