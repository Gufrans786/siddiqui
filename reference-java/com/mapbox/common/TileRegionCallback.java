package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface TileRegionCallback {
    void run(Expected<TileRegionError, TileRegion> expected);
}
