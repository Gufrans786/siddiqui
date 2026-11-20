package com.mapbox.maps;

public enum ConstrainMode {
    NONE,
    HEIGHT_ONLY,
    WIDTH_AND_HEIGHT;

    private int getValue() {
        return ordinal();
    }
}
