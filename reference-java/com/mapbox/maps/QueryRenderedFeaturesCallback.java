package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import java.util.List;

public interface QueryRenderedFeaturesCallback {
    void run(Expected<String, List<QueriedRenderedFeature>> expected);
}
