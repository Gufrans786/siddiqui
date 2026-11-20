package com.mapbox.common;

public enum SettingsServiceStorageType {
    PERSISTENT,
    NON_PERSISTENT;

    private int getValue() {
        return ordinal();
    }
}
