package com.mapbox.common;

public enum MovementModeProvider {
    SYSTEM("System"),
    SDK("SDK"),
    UNKNOWN("Unknown");

    private String str;

    MovementModeProvider(String str) {
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
