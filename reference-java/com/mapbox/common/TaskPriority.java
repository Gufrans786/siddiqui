package com.mapbox.common;

public enum TaskPriority {
    DEFAULT,
    HIGH;

    private int getValue() {
        return ordinal();
    }
}
