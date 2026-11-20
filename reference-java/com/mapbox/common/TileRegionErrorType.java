package com.mapbox.common;

public enum TileRegionErrorType {
    CANCELED("Canceled"),
    DOES_NOT_EXIST("DoesNotExist"),
    TILESET_DESCRIPTOR("TilesetDescriptor"),
    DISK_FULL("DiskFull"),
    OTHER("Other"),
    TILE_COUNT_EXCEEDED("TileCountExceeded");

    private String str;

    TileRegionErrorType(String str) {
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
