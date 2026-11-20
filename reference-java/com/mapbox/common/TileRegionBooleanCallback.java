package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface TileRegionBooleanCallback {
    void run(Expected<TileRegionError, Boolean> expected);
}
