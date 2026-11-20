package com.mapbox.maps;

public enum ResponseSourceType {
    NETWORK("Network"),
    CACHE("Cache"),
    TILE_STORE("TileStore"),
    LOCAL_FILE("LocalFile");

    private String str;

    ResponseSourceType(String str) {
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
