package com.mapbox.maps;

import com.google.common.net.HttpHeaders;

public enum RequestErrorType {
    SUCCESS("Success"),
    NOT_FOUND("NotFound"),
    SERVER(HttpHeaders.SERVER),
    CONNECTION(HttpHeaders.CONNECTION),
    RATE_LIMIT("RateLimit"),
    IN_OFFLINE_MODE("InOfflineMode"),
    OTHER("Other");

    private String str;

    RequestErrorType(String str) {
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
