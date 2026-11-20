package com.mapbox.common;

public enum MaploadSKUIdentifier {
    PREMIUM_SDK("PremiumSDK");

    private String str;

    MaploadSKUIdentifier(String str) {
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
