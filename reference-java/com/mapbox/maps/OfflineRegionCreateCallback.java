package com.mapbox.maps;

import com.mapbox.bindgen.Expected;

@Deprecated
public interface OfflineRegionCreateCallback {
    void run(Expected<String, OfflineRegion> expected);
}
