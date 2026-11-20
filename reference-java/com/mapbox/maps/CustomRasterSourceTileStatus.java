package com.mapbox.maps;

public enum CustomRasterSourceTileStatus {
    REQUIRED,
    OPTIONAL,
    NOT_NEEDED;

    private int getValue() {
        return ordinal();
    }
}
