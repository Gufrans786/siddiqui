package com.mapbox.common;

public enum TransferErrorCode {
    FILE_SYSTEM_ERROR("FileSystemError"),
    NETWORK_ERROR("NetworkError");

    private String str;

    TransferErrorCode(String str) {
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
