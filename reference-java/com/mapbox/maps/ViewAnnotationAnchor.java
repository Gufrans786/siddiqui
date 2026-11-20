package com.mapbox.maps;

public enum ViewAnnotationAnchor {
    CENTER,
    TOP,
    LEFT,
    BOTTOM,
    RIGHT,
    TOP_LEFT,
    BOTTOM_RIGHT,
    TOP_RIGHT,
    BOTTOM_LEFT;

    private int getValue() {
        return ordinal();
    }
}
