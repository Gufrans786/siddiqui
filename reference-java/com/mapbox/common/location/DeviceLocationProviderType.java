package com.mapbox.common.location;

public enum DeviceLocationProviderType {
    BEST,
    ANDROID,
    GOOGLE_PLAY_SERVICES;

    private int getValue() {
        return ordinal();
    }
}
