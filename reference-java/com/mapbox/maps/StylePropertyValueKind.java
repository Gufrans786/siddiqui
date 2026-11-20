package com.mapbox.maps;

public enum StylePropertyValueKind {
    UNDEFINED,
    CONSTANT,
    EXPRESSION,
    TRANSITION;

    private int getValue() {
        return ordinal();
    }
}
