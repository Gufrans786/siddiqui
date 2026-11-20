package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface ResourceLoadResultCallback {
    void run(Expected<ResourceLoadError, ResourceLoadResult> expected);
}
