package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

public interface TileStoreImportCompleteCallback {
    void run(Expected<TileStoreImportError, None> expected);
}
