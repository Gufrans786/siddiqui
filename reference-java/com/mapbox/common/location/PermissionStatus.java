package com.mapbox.common.location;

public enum PermissionStatus {
    DENIED("Denied"),
    GRANTED("Granted"),
    FOREGROUND("Foreground"),
    BACKGROUND("Background");

    private String str;

    PermissionStatus(String str) {
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
