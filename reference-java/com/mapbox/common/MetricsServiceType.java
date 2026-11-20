package com.mapbox.common;

public enum MetricsServiceType {
    TELEMETRY("Telemetry"),
    LOG("Log");

    private String str;

    MetricsServiceType(String str) {
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
