package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

public interface StylePackMetadataCallback {
    void run(Expected<StylePackError, Value> expected);
}
