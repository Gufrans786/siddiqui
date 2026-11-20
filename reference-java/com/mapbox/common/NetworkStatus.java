package com.mapbox.common;

public enum NetworkStatus {
    NOT_REACHABLE("NotReachable"),
    REACHABLE_VIA_WI_FI("ReachableViaWiFi"),
    REACHABLE_VIA_ETHERNET("ReachableViaEthernet"),
    REACHABLE_VIA_WWAN("ReachableViaWWAN");

    private String str;

    NetworkStatus(String str) {
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
