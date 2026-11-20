package com.mapbox.maps;

public enum ViewportMode {
    DEFAULT,
    FLIPPED_Y;

    private int getValue() {
        return ordinal();
    }
}
