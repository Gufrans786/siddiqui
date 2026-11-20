package com.mapbox.maps;

public enum RequestPriorityType {
    REGULAR("Regular"),
    LOW("Low");

    private String str;

    RequestPriorityType(String str) {
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
