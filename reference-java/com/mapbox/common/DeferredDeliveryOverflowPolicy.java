package com.mapbox.common;

public enum DeferredDeliveryOverflowPolicy {
    DISCARD_INCOMING,
    RETIRE_OLDEST;

    private int getValue() {
        return ordinal();
    }
}
