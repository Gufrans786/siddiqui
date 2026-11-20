package com.mapbox.maps;

public enum PlatformEventType {
    CLICK,
    LONG_CLICK,
    DRAG_BEGIN,
    DRAG,
    DRAG_END;

    private int getValue() {
        return ordinal();
    }
}
