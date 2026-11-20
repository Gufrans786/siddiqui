package com.mapbox.maps;

public enum MapCenterAltitudeMode {
    TERRAIN,
    SEA;

    private int getValue() {
        return ordinal();
    }
}
