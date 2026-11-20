package com.mapbox.common;

public enum TileStoreImportErrorType {
    CANCELED("Canceled"),
    DOES_NOT_EXIST("DoesNotExist"),
    DISK_FULL("DiskFull"),
    OTHER("Other"),
    INTEGRITY_CHECK_ERROR("IntegrityCheckError");

    private String str;

    TileStoreImportErrorType(String str) {
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
