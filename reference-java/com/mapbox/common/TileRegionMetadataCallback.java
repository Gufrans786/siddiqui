package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

public interface TileRegionMetadataCallback {
    void run(Expected<TileRegionError, Value> expected);
}
