package com.mapbox.maps;

public enum ContextMode {
    UNIQUE,
    SHARED;

    private int getValue() {
        return ordinal();
    }
}
