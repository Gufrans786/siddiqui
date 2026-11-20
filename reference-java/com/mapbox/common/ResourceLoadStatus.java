package com.mapbox.common;

public enum ResourceLoadStatus {
    AVAILABLE,
    NOT_FOUND,
    UNAUTHORIZED;

    private int getValue() {
        return ordinal();
    }
}
