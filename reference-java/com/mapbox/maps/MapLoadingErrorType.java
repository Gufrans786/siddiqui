package com.mapbox.maps;

public enum MapLoadingErrorType {
    STYLE("Style"),
    SPRITE("Sprite"),
    SOURCE("Source"),
    GLYPHS("Glyphs"),
    TILE("Tile");

    private String str;

    MapLoadingErrorType(String str) {
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
