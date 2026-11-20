package com.mapbox.maps;

public enum StylePackErrorType {
    CANCELED("Canceled"),
    DOES_NOT_EXIST("DoesNotExist"),
    DISK_FULL("DiskFull"),
    OTHER("Other");

    private String str;

    StylePackErrorType(String str) {
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
