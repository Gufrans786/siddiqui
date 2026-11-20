package com.mapbox.common;

public enum BillingServiceErrorCode {
    TOKEN_VALIDATION_FAILED("TokenValidationFailed"),
    RESUME_FAILED("ResumeFailed");

    private String str;

    BillingServiceErrorCode(String str) {
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
