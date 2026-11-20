package com.mapbox.maps;

public enum NorthOrientation {
    UPWARDS,
    RIGHTWARDS,
    DOWNWARDS,
    LEFTWARDS;

    private int getValue() {
        return ordinal();
    }
}
