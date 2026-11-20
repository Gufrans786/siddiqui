package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import java.util.List;

@Deprecated
public interface OfflineRegionCallback {
    void run(Expected<String, List<OfflineRegion>> expected);
}
