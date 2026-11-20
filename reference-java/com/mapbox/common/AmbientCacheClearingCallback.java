package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface AmbientCacheClearingCallback {
    void run(Expected<CacheClearingError, Long> expected);
}
