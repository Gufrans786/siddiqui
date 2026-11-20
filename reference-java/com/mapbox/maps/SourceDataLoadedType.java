package com.mapbox.maps;

public enum SourceDataLoadedType {
    METADATA("Metadata"),
    TILE("Tile");

    private String str;

    SourceDataLoadedType(String str) {
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
