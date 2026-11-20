package com.mapbox.maps;

public enum StyleDataLoadedType {
    STYLE("Style"),
    SPRITE("Sprite"),
    SOURCES("Sources");

    private String str;

    StyleDataLoadedType(String str) {
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
