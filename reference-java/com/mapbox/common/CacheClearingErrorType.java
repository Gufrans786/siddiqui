package com.mapbox.common;

public enum CacheClearingErrorType {
    DATABASE_ERROR("DatabaseError"),
    OTHER_ERROR("OtherError");

    private String str;

    CacheClearingErrorType(String str) {
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
