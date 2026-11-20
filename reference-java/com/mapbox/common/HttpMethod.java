package com.mapbox.common;

public enum HttpMethod {
    GET("Get"),
    HEAD("Head"),
    POST("Post");

    private String str;

    HttpMethod(String str) {
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
