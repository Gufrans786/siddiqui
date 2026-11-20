package com.mapbox.common;

public enum LoggingLevel {
    DEBUG("Debug"),
    INFO("Info"),
    WARNING(com.google.common.net.HttpHeaders.WARNING),
    ERROR("Error");

    private String str;

    LoggingLevel(String str) {
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
