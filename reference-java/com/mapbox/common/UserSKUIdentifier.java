package com.mapbox.common;

public enum UserSKUIdentifier {
    MAPS_MAUS("MapsMAUS"),
    VISION_MAUS("VisionMAUS"),
    VISION_FLEET_MAUS("VisionFleetMAUS"),
    NAV2_SES_MAU("Nav2SesMAU"),
    NAV3_UX_MAU("Nav3UxMAU"),
    NAV3_CORE_MAU("Nav3CoreMAU"),
    GEOFENCING_MAU("GeofencingMAU"),
    UNITY_MAUS("UnityMAUS");

    private String str;

    UserSKUIdentifier(String str) {
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
