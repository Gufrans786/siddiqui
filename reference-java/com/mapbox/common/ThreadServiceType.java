package com.mapbox.common;

import androidx.webkit.Profile;

public enum ThreadServiceType {
    INTERACTIVE("Interactive"),
    IMPORTANT("Important"),
    DEFAULT(Profile.DEFAULT_PROFILE_NAME),
    UTILITY("Utility"),
    BACKGROUND("Background"),
    UNSPECIFIED("Unspecified");

    private String str;

    ThreadServiceType(String str) {
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
