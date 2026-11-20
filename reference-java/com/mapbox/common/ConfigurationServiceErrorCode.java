package com.mapbox.common;

public enum ConfigurationServiceErrorCode {
    NO_TOKEN("NoToken"),
    NO_CONFIGURATION("NoConfiguration"),
    HTTP_ERROR("HttpError"),
    MALFORMED_CONFIGURATION("MalformedConfiguration"),
    IOERROR("IOError"),
    UPDATE_IN_PROGRESS("UpdateInProgress"),
    UNEXPECTED_HTTPRESPONSE_CODE("UnexpectedHTTPResponseCode"),
    EXPIRED_CONFIGURATION("ExpiredConfiguration");

    private String str;

    ConfigurationServiceErrorCode(String str) {
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
