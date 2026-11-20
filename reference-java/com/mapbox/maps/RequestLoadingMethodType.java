package com.mapbox.maps;

public enum RequestLoadingMethodType {
    NETWORK("Network"),
    CACHE("Cache");

    private String str;

    RequestLoadingMethodType(String str) {
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
