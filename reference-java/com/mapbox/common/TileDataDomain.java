package com.mapbox.common;

public enum TileDataDomain {
    MAPS("Maps"),
    NAVIGATION("Navigation"),
    SEARCH("Search"),
    ADAS("Adas"),
    NAVIGATION_HD("NavigationHD");

    private String str;

    TileDataDomain(String str) {
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
