package com.mapbox.common;

public enum TileStoreAmbientCacheType {
    TILES("Tiles"),
    RESOURCES("Resources");

    private String str;

    TileStoreAmbientCacheType(String str) {
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
