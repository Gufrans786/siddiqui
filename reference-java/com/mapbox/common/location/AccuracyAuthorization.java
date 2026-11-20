package com.mapbox.common.location;

public enum AccuracyAuthorization {
    NONE("None"),
    EXACT("Exact"),
    INEXACT("Inexact");

    private String str;

    AccuracyAuthorization(String str) {
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
