package com.mapbox.maps;

import com.mapbox.bindgen.Expected;

@Deprecated
public interface OfflineRegionStatusCallback {
    void run(Expected<String, OfflineRegionStatus> expected);
}
