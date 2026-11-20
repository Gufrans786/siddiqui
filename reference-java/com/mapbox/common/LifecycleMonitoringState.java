package com.mapbox.common;

public enum LifecycleMonitoringState {
    STOPPED("STOPPED"),
    STARTED("STARTED");

    private String str;

    LifecycleMonitoringState(String str) {
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
