package com.mapbox.maps;

@Deprecated
public interface OfflineRegionObserver {
    void errorOccurred(OfflineRegionError offlineRegionError);

    void statusChanged(OfflineRegionStatus offlineRegionStatus);
}
