package com.mapbox.maps;

import com.mapbox.bindgen.Expected;

public interface SnapshotCompleteCallback {
    void run(Expected<String, MapSnapshot> expected);
}
