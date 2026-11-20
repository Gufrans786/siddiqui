package com.mapbox.common;

public enum ConfigurationOptionsSource {
    LOCAL("Local"),
    SERVER(com.google.common.net.HttpHeaders.SERVER);

    private String str;

    ConfigurationOptionsSource(String str) {
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
