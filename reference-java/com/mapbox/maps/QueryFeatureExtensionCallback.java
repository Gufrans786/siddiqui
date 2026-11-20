package com.mapbox.maps;

import com.mapbox.bindgen.Expected;

public interface QueryFeatureExtensionCallback {
    void run(Expected<String, FeatureExtensionValue> expected);
}
