package com.mapbox.common;

public enum ResourceLoadErrorType {
    ERRORED,
    UNSATISFIED,
    CANCELED,
    INVALID_ARGUMENT,
    INSUFFICIENT_STORAGE,
    INTEGRITY_CHECK_ERROR;

    private int getValue() {
        return ordinal();
    }
}
