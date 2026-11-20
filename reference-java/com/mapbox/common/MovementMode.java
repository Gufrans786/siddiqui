package com.mapbox.common;

public enum MovementMode {
    IN_VEHICLE("InVehicle"),
    CYCLING("Cycling"),
    RUNNING("Running"),
    WALKING("Walking"),
    ON_FOOT("OnFoot"),
    STATIONARY("Stationary"),
    UNKNOWN("Unknown");

    private String str;

    MovementMode(String str) {
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
