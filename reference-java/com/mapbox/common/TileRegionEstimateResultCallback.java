package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface TileRegionEstimateResultCallback {
    void run(Expected<TileRegionError, TileRegionEstimateResult> expected);
}
