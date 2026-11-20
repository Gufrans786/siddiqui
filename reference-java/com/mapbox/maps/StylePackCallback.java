package com.mapbox.maps;

import com.mapbox.bindgen.Expected;

public interface StylePackCallback {
    void run(Expected<StylePackError, StylePack> expected);
}
