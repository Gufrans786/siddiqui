package com.mapbox.maps;

public enum RenderModeType {
    PARTIAL("Partial"),
    FULL("Full");

    private String str;

    RenderModeType(String str) {
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
