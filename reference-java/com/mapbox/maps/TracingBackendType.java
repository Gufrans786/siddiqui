package com.mapbox.maps;

@Deprecated
public enum TracingBackendType {
    NOOP("Noop"),
    PLATFORM("Platform"),
    LOGGER("Logger");

    private String str;

    TracingBackendType(String str) {
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
