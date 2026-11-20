package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import java.util.List;

public interface TileRegionsCallback {
    void run(Expected<TileRegionError, List<TileRegion>> expected);
}
