package com.mapbox.common;

public enum LifecycleState {
    UNKNOWN("Unknown"),
    MOVING_FOREGROUND("MovingForeground"),
    FOREGROUND("Foreground"),
    MOVING_BACKGROUND("MovingBackground"),
    BACKGROUND("Background"),
    INACTIVE("Inactive");

    private String str;

    LifecycleState(String str) {
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
