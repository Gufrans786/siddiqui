package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

public interface QueryFeatureStateCallback {
    void run(Expected<String, Value> expected);
}
