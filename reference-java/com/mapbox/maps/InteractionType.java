package com.mapbox.maps;

public enum InteractionType {
    CLICK,
    LONG_CLICK,
    DRAG;

    private int getValue() {
        return ordinal();
    }
}
