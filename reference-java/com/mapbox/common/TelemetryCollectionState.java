package com.mapbox.common;

public enum TelemetryCollectionState {
    ENABLED("Enabled"),
    TURNSTILE_EVENTS_ONLY("TurnstileEventsOnly"),
    UNKNOWN("Unknown"),
    BACKGROUND_LOCATIONS_DISABLED("BackgroundLocationsDisabled");

    private String str;

    TelemetryCollectionState(String str) {
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
