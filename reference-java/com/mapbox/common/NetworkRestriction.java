package com.mapbox.common;

public enum NetworkRestriction {
    NONE(0),
    DISALLOW_EXPENSIVE(1),
    DISALLOW_ALL(255);

    public final int value;

    NetworkRestriction(int i) {
        this.value = i;
    }

    private int getValue() {
        return this.value;
    }
}
