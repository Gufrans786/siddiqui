package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.geojson.Geometry;

public interface TileRegionGeometryCallback {
    void run(Expected<TileRegionError, Geometry> expected);
}
