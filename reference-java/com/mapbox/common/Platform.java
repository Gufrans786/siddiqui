package com.mapbox.common;

public enum Platform {
    LINUX("Linux"),
    IOS("IOS"),
    ANDROID("Android"),
    MAC_OS("MacOS");

    private String str;

    Platform(String str) {
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
