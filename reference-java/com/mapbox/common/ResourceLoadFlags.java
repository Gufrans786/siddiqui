package com.mapbox.common;

public enum ResourceLoadFlags {
    NONE(0),
    CRITICAL(1),
    ACCEPT_EXPIRED(2),
    FORCE_LOAD(4),
    SKIP_DATA_LOADING(8),
    SKIP_DATA_TRANSFER(24),
    FORCE_EXPIRED(32),
    SKIP_DECOMPRESSION(64),
    CHECK_INTEGRITY(128);

    public final int value;

    ResourceLoadFlags(int i) {
        this.value = i;
    }

    private int getValue() {
        return this.value;
    }
}
