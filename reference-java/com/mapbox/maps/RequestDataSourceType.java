package com.mapbox.maps;

public enum RequestDataSourceType {
    ASSET("Asset"),
    DATABASE("Database"),
    FILE_SYSTEM("FileSystem"),
    NETWORK("Network"),
    RESOURCE_LOADER("ResourceLoader");

    private String str;

    RequestDataSourceType(String str) {
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
