package com.mapbox.common;

public enum BillingSessionStatus {
    SESSION_ACTIVE("SessionActive"),
    SESSION_PAUSED("SessionPaused"),
    NO_SESSION("NoSession");

    private String str;

    BillingSessionStatus(String str) {
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
