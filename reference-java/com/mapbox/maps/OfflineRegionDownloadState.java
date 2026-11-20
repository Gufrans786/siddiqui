package com.mapbox.maps;

@Deprecated
public enum OfflineRegionDownloadState {
    INACTIVE,
    ACTIVE;

    private int getValue() {
        return ordinal();
    }
}
