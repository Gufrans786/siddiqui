package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

public interface FeatureStateOperationCallback {
    void run(Expected<String, None> expected);
}
