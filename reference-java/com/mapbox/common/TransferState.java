package com.mapbox.common;

public enum TransferState {
    PENDING,
    IN_PROGRESS,
    FAILED,
    FINISHED;

    private int getValue() {
        return ordinal();
    }
}
