package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface TileRegionTilesetsCallback {
    void run(Expected<TileRegionError, TilesetDescriptor> expected);
}
