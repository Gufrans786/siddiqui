package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

public interface AsyncOperationResultCallback {
    void run(Expected<String, None> expected);
}
