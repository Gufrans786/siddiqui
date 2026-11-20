package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import java.util.List;

public interface QuerySourceFeaturesCallback {
    void run(Expected<String, List<QueriedSourceFeature>> expected);
}
