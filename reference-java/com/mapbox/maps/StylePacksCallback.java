package com.mapbox.maps;

import com.mapbox.bindgen.Expected;
import java.util.List;

public interface StylePacksCallback {
    void run(Expected<StylePackError, List<StylePack>> expected);
}
