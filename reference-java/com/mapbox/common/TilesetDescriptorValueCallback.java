package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

public interface TilesetDescriptorValueCallback {
    void run(Expected<String, Value> expected);
}
