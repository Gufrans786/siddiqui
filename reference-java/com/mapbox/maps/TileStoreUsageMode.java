package com.mapbox.maps;

public enum TileStoreUsageMode {
    DISABLED("Disabled"),
    READ_ONLY("ReadOnly"),
    READ_AND_UPDATE("ReadAndUpdate");

    private String str;

    TileStoreUsageMode(String str) {
        this.str = str;
    }

    @Override
    public String toString() {
        return this.str;
    }

    private int getValue() {
        return ordinal();
    }
}
